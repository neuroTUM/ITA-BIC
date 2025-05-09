set_property SRC_FILE_INFO {cfile:/tmp/mnt_ryloth_ipek/vivado_projects/ITA_Project/ITA/ITA.srcs/constrs_1/new/synthesis_wo_contsraints.xdc rfile:../../../ITA.srcs/constrs_1/new/synthesis_wo_contsraints.xdc id:1} [current_design]
set_property SRC_FILE_INFO {cfile:/nfs/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl rfile:../../../../../../../../nfs/tools/xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/tcl/xpm_memory_xdc.tcl id:2 order:LATE scoped_inst:i_engine/i_ita/i_accumulator/partialsum_buffer_sram.i_partialsum_buffer/gen_2_ports.i_xpm_memory_tdpram unmanaged:yes} [current_design]
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock $clk_first_try -max 2.000 [get_ports -filter {DIRECTION == IN}];
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
set_input_delay -clock $clk_first_try -min 2.000 [get_ports -filter {DIRECTION == IN}];
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock $clk_first_try -max 2.000 [get_ports -filter {DIRECTION == OUT}];
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_output_delay -clock $clk_first_try -min 2.000 [get_ports -filter {DIRECTION == OUT}];
current_instance i_engine/i_ita/i_accumulator/partialsum_buffer_sram.i_partialsum_buffer/gen_2_ports.i_xpm_memory_tdpram
set_property src_info {type:SCOPED_XDC file:2 line:3 export:INPUT save:NONE read:READ} [current_design]
set my_var [get_property dram_emb_xdc [get_cells -hier  -filter {PRIMITIVE_SUBGROUP==LUTRAM || PRIMITIVE_SUBGROUP==dram || PRIMITIVE_SUBGROUP==uram || PRIMITIVE_SUBGROUP==BRAM}]]
