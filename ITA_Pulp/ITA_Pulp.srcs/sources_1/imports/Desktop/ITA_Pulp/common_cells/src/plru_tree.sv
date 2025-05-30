// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License.  You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.
//
// Author: David Schaffenrath, TU Graz
// Author: Florian Zaruba, ETH Zurich
//
// Description: Pseudo Least Recently Used Tree (PLRU)
// See: https://en.wikipedia.org/wiki/Pseudo-LRU

`include "assertions.svh"

module plru_tree #(
  parameter int unsigned ENTRIES = 16
) (
  input  logic               clk_i,
  input  logic               rst_ni,
  input  logic [ENTRIES-1:0] used_i, // element i was used (one hot)
  output logic [ENTRIES-1:0] plru_o  // element i is the least recently used (one hot)
);

    localparam int unsigned LogEntries = $clog2(ENTRIES);

    logic [2*(ENTRIES-1)-1:0] plru_tree_q, plru_tree_d;

    always_comb begin : plru_replacement
        automatic int unsigned idx_base, shift;
        automatic logic new_index;
        idx_base    = 0;
        shift       = 0;
        new_index   = 1'b0;
        plru_tree_d = plru_tree_q;
        // The PLRU-tree indexing:
        // lvl0        0
        //            / \
        //           /   \
        // lvl1     1     2
        //         / \   / \
        // lvl2   3   4 5   6
        //       / \ /\/\  /\
        //      ... ... ... ...
        // Just predefine which nodes will be set/cleared
        // E.g. for a TLB with 8 entries, the for-loop is semantically
        // equivalent to the following pseudo-code:
        // unique case (1'b1)
        // used_i[7]: plru_tree_d[0, 2, 6] = {1, 1, 1};
        // used_i[6]: plru_tree_d[0, 2, 6] = {1, 1, 0};
        // used_i[5]: plru_tree_d[0, 2, 5] = {1, 0, 1};
        // used_i[4]: plru_tree_d[0, 2, 5] = {1, 0, 0};
        // used_i[3]: plru_tree_d[0, 1, 4] = {0, 1, 1};
        // used_i[2]: plru_tree_d[0, 1, 4] = {0, 1, 0};
        // used_i[1]: plru_tree_d[0, 1, 3] = {0, 0, 1};
        // used_i[0]: plru_tree_d[0, 1, 3] = {0, 0, 0};
        // default: begin /* No hit */ end
        // endcase
        for (int unsigned i = 0; i < ENTRIES; i++) begin
            // we got a hit so update the pointer as it was least recently used
            if (used_i[i]) begin
                // Set the nodes to the values we would expect
                for (int unsigned lvl = 0; lvl < LogEntries; lvl++) begin
                  idx_base = $unsigned((2**lvl)-1);
                  // lvl0 <=> MSB, lvl1 <=> MSB-1, ...
                  shift = LogEntries - lvl;
                  // to circumvent the 32 bit integer arithmetic assignment
                  new_index = 1'(~(i >> (shift-1)));
                  plru_tree_d[idx_base + (i >> shift)] = new_index;
                end
            end
        end
    end

    always_comb begin : plru_output
        automatic int unsigned idx_base, shift;
        automatic logic new_index;
        idx_base  = 0;
        shift     = 0;
        new_index = 1'b0;
        plru_o    = '1;
        // Decode tree to write enable signals
        // Next for-loop basically creates the following logic for e.g. an 8 entry
        // TLB (note: pseudo-code obviously):
        // plru_o[7] = &plru_tree_q[ 6, 2, 0]; //plru_tree_q[0,2,6]=={1,1,1}
        // plru_o[6] = &plru_tree_q[~6, 2, 0]; //plru_tree_q[0,2,6]=={1,1,0}
        // plru_o[5] = &plru_tree_q[ 5,~2, 0]; //plru_tree_q[0,2,5]=={1,0,1}
        // plru_o[4] = &plru_tree_q[~5,~2, 0]; //plru_tree_q[0,2,5]=={1,0,0}
        // plru_o[3] = &plru_tree_q[ 4, 1,~0]; //plru_tree_q[0,1,4]=={0,1,1}
        // plru_o[2] = &plru_tree_q[~4, 1,~0]; //plru_tree_q[0,1,4]=={0,1,0}
        // plru_o[1] = &plru_tree_q[ 3,~1,~0]; //plru_tree_q[0,1,3]=={0,0,1}
        // plru_o[0] = &plru_tree_q[~3,~1,~0]; //plru_tree_q[0,1,3]=={0,0,0}
        // For each entry traverse the tree. If every tree-node matches,
        // the corresponding bit of the entry's index, this is
        // the next entry to replace.
        for (int unsigned i = 0; i < ENTRIES; i += 1) begin
            for (int unsigned lvl = 0; lvl < LogEntries; lvl++) begin
                idx_base = $unsigned((2**lvl)-1);
                // lvl0 <=> MSB, lvl1 <=> MSB-1, ...
                shift = LogEntries - lvl;
                // plru_o[i] &= plru_tree_q[idx_base + (i>>shift)] == ((i >> (shift-1)) & 1'b1);
                new_index = 1'(i >> (shift-1));
                if (new_index) begin
                  plru_o[i] &= plru_tree_q[idx_base + (i>>shift)];
                end else begin
                  plru_o[i] &= ~plru_tree_q[idx_base + (i>>shift)];
                end
            end
        end
    end

    always_ff @(posedge clk_i or negedge rst_ni) begin
        if (!rst_ni) begin
            plru_tree_q <= '0;
        end else begin
            plru_tree_q <= plru_tree_d;
        end
    end

`ifndef COMMON_CELLS_ASSERTS_OFF
    `ASSERT_INIT(entries_not_power_of_2, ENTRIES == 2**LogEntries, "Entries must be a power of two")

    `ASSERT(output_onehot, $onehot0(plru_o), clk_i, !rst_ni,
            "More than one bit set in PLRU output.")
`endif

endmodule
