// Copyright 2018 ETH Zurich and University of Bologna.
// Copyright and related rights are licensed under the Solderpad Hardware
// License, Version 0.51 (the "License"); you may not use this file except in
// compliance with the License. You may obtain a copy of the License at
// http://solderpad.org/licenses/SHL-0.51. Unless required by applicable law
// or agreed to in writing, software, hardware and materials distributed under
// this License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
// CONDITIONS OF ANY KIND, either express or implied. See the License for the
// specific language governing permissions and limitations under the License.

// Franceco Conti <fconti@iis.ee.ethz.ch>

`include "assertions.svh"

module onehot_to_bin #(
    parameter int unsigned ONEHOT_WIDTH = 16,
    // Do Not Change
    parameter int unsigned BIN_WIDTH    = ONEHOT_WIDTH == 1 ? 1 : $clog2(ONEHOT_WIDTH)
)   (
    input  logic [ONEHOT_WIDTH-1:0] onehot,
    output logic [BIN_WIDTH-1:0]    bin
);

    for (genvar j = 0; j < BIN_WIDTH; j++) begin : gen_jl
        logic [ONEHOT_WIDTH-1:0] tmp_mask;
            for (genvar i = 0; i < ONEHOT_WIDTH; i++) begin : gen_il
                logic [BIN_WIDTH-1:0] tmp_i;
                assign tmp_i = BIN_WIDTH'(i);
                assign tmp_mask[i] = tmp_i[j];
            end
        assign bin[j] = |(tmp_mask & onehot);
    end

`ifndef COMMON_CELLS_ASSERTS_OFF
    `ASSERT_FINAL(more_than_2_bits, $onehot0(onehot), "More than two bit set in the one-hot signal")
`endif
endmodule
