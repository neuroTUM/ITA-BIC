create_clock -period 10.000 -name clk_first_try -waveform {0.000 5.000} [get_ports clk_i]
set_input_delay -clock [get_clocks clk_first_try] -max 2.000 [get_ports -filter {DIRECTION == IN}];
set_input_delay -clock [get_clocks clk_first_try] -min 2.000 [get_ports -filter {DIRECTION == IN}];
set_output_delay -clock [get_clocks clk_first_try] -max 2.000 [get_ports -filter {DIRECTION == OUT}];
set_output_delay -clock [get_clocks clk_first_try] -min 2.000 [get_ports -filter {DIRECTION == OUT}];
