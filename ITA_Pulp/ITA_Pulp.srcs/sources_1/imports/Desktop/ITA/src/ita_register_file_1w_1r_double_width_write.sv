// Copyright 2014 ETH Zurich and University of Bologna.
// Solderpad Hardware License, Version 0.51, see LICENSE for details.
// SPDX-License-Identifier: SHL-0.51

module ita_register_file_1w_1r_double_width_write
#(
    parameter WADDR_WIDTH   = 2,
    parameter WDATA_WIDTH   = 768,

    parameter RDATA_WIDTH   = 384,
    parameter RADDR_WIDTH   = WADDR_WIDTH+$clog2(WDATA_WIDTH/RDATA_WIDTH),

    parameter W_N_ROWS      = 2**WADDR_WIDTH
)
(
    input  logic                                   clk,
    input  logic                                   rst_n,

    // Read port
    input  logic                                   ReadEnable,
    input  logic [RADDR_WIDTH-1:0]                 ReadAddr,
    output logic [RDATA_WIDTH-1:0]                 ReadData,

    // Write port
    input  logic                                   WriteEnable,
    input  logic [WADDR_WIDTH-1:0]                 WriteAddr,
    input  logic [WDATA_WIDTH-1:0]                 WriteData
);


logic [RDATA_WIDTH-1:0]                            ReadData_lo;
logic [RDATA_WIDTH-1:0]                            ReadData_hi;

logic                                              DEST;

int unsigned j;
genvar i;




always_ff @(posedge clk or negedge rst_n)
begin
    if(~rst_n)
    begin
        DEST <= 0;
    end
    else
    begin
        DEST <= ReadAddr[0];
    end
end



generate


    assign ReadData = (DEST == 1'b0) ?  ReadData_lo : ReadData_hi;



      if(W_N_ROWS == 1)
      begin
          register_file_1r_1w_1row
          #(
              .DATA_WIDTH ( RDATA_WIDTH )
          )
          bram_cut_lo
          (
              .clk         ( clk                        ),

              .ReadEnable  ( ReadEnable                 ),
              .ReadData    ( ReadData_lo                ),

              .WriteEnable ( WriteEnable                ),
              .WriteData   ( WriteData[RDATA_WIDTH-1:0] )
          );

          register_file_1r_1w_1row
          #(
              .DATA_WIDTH ( RDATA_WIDTH )
          )
          bram_cut_hi
          (
              .clk         ( clk                        ),

              .ReadEnable  ( ReadEnable                 ),
              .ReadData    ( ReadData_hi                ),

              .WriteEnable ( WriteEnable                ),
              .WriteData   ( WriteData[2*RDATA_WIDTH-1:RDATA_WIDTH])
          );
      end
      else
      begin
          register_file_1r_1w
          #(
              .ADDR_WIDTH ( WADDR_WIDTH ),
              .DATA_WIDTH ( RDATA_WIDTH )
          )
          bram_cut_lo
          (
              .clk         ( clk                       ),

              .ReadEnable  ( ReadEnable                ),
              .ReadAddr    ( ReadAddr[RADDR_WIDTH-1:1] ),
              .ReadData    ( ReadData_lo               ),

              .WriteAddr   ( WriteAddr                 ),
              .WriteEnable ( WriteEnable               ),
              .WriteData   ( WriteData[RDATA_WIDTH-1:0])
          );

          register_file_1r_1w
          #(
              .ADDR_WIDTH ( WADDR_WIDTH ),
              .DATA_WIDTH ( RDATA_WIDTH )
          )
          bram_cut_hi
          (
              .clk         ( clk                       ),

              .ReadEnable  ( ReadEnable                ),
              .ReadAddr    ( ReadAddr[RADDR_WIDTH-1:1] ),
              .ReadData    ( ReadData_hi               ),

              .WriteAddr   ( WriteAddr                 ),
              .WriteEnable ( WriteEnable               ),
              .WriteData   ( WriteData[2*RDATA_WIDTH-1:RDATA_WIDTH])
          );
      end

endgenerate




endmodule