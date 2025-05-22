// Copyright 2014 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

// From latch_scm { git: "https://github.com/pulp-platform/scm.git", version: "1.1.0" }, added async rst and NUM_BYTE->N_EN.

module ita_register_file_1w_multi_port_read_we
#(
    parameter ADDR_WIDTH    = 5,
    parameter DATA_WIDTH    = 32,

    parameter N_READ        = 2,
    parameter N_WRITE       = 1,
    parameter N_EN          = 4
)
(
    input  logic                                 clk_i,
    input  logic                                 rst_n,

    // Read port
    input  logic [N_READ-1:0]                    ReadEnable,
    input  logic [N_READ-1:0][ADDR_WIDTH-1:0]    ReadAddr,
    output logic [N_READ-1:0][DATA_WIDTH-1:0]    ReadData,

    // Write port
    input  logic                                 WriteEnable,
    input  logic [ADDR_WIDTH-1:0]                WriteAddr,
    input  logic [N_EN-1:0][DATA_WIDTH/N_EN-1:0] WriteData,
    input  logic [N_EN-1:0]                      WriteSelect
);
    // Aleksa's comments:
    // From the simulation waveforms it seems that there is a 2 cycle read delay
    // From my analysis of the code it seems like the write data is immediately available on the read output if it is requested by the read port

    localparam    NUM_WORDS = 2**ADDR_WIDTH;

    // Read address register, located at the input of the address decoder
    logic [N_READ-1:0][DATA_WIDTH-1:0]            RDataReg;

    // For the current paramter values it is 4 bytes per slot and there are 2^5 slots (32 x 4 bytes reg file)
    logic [N_EN-1:0][DATA_WIDTH/N_EN-1:0]         MemContentxDP[NUM_WORDS];

    // This is a word that will be written to the memory
    logic [N_EN-1:0][DATA_WIDTH/N_EN-1:0]         WDataIntxD;

    // Write address register, located at the input of the address decoder
    logic [ADDR_WIDTH-1:0]                        WAddrReg;
    logic                                         WEnableReg;

    int unsigned i;
    int unsigned j;
    int unsigned k;
    int unsigned l;
    int unsigned m;

    genvar       x;
    genvar       y;
    genvar       z;

    //-----------------------------------------------------------------------------
    //-- READ : Read address register
    //-----------------------------------------------------------------------------

    generate
        for(z=0; z<N_READ; z++ )
        begin
            always_ff @(posedge clk_i, negedge rst_n)
            begin : p_RAddrReg
              if(rst_n == 1'b0)
              begin
                RDataReg[z] <= '0;
              end
              else
              if(ReadEnable[z]) begin
                RDataReg[z] <= (WriteEnable) ? (WriteAddr == ReadAddr[z]) ? WDataIntxD : MemContentxDP[ReadAddr[z]] : MemContentxDP[ReadAddr[z]];
              end
            end
            assign ReadData[z] = RDataReg[z];
        end
    endgenerate

    //-----------------------------------------------------------------------------
    // WRITE : Determine which bytes to write
    //-----------------------------------------------------------------------------
    always_comb begin
        for(m=0; m<N_EN; m++) 
        begin
            if(WriteEnable & WriteSelect[m])
              WDataIntxD[m] <= WriteData[m];
            else
              WDataIntxD[m] <= MemContentxDP[WriteAddr][m];
        end
    end

    //-----------------------------------------------------------------------------
    // WRITE : Register the write address and enable
    //-----------------------------------------------------------------------------

    always_ff @(posedge clk_i, negedge rst_n)
    begin : sample_waddr
      if(rst_n == 1'b0)
      begin
        WAddrReg    <= '0;
        WEnableReg  <= '0;
      end
      else begin
        WEnableReg  <= WriteEnable;
        WAddrReg    <= WriteAddr;
      end
    end

    //-----------------------------------------------------------------------------
    //-- WRITE : Write to the memory
    //-----------------------------------------------------------------------------

    always_ff @(posedge clk_i, negedge rst_n)
    begin : ff_wdata
      if(rst_n == 1'b0)
      begin
        for(j=0;j<NUM_WORDS;j++) begin
          MemContentxDP[j] <= '0;
      end
      end
      else 
      begin
        if(WEnableReg) begin
          MemContentxDP[WAddrReg] <= WDataIntxD;
        end
      end
    end


endmodule

