
Q
Command: %s
53*	vivadotcl2 
place_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xczu7ev2default:defaultZ17-349h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
place_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
42default:defaultZ23-27h px� 
V
DRC finished with %s
79*	vivadotcl2
0 Errors2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
U

Starting %s Task
103*constraints2
Placer2default:defaultZ18-103h px� 
}
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
42default:defaultZ30-611h px� 
v

Phase %s%s
101*constraints2
1 2default:default2)
Placer Initialization2default:defaultZ18-101h px� 
�

Phase %s%s
101*constraints2
1.1 2default:default29
%Placer Initialization Netlist Sorting2default:defaultZ18-101h px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
5285.8012default:default2
0.0002default:default2
63702default:default2
151712default:defaultZ17-722h px� 
Z
EPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 55822451
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:00.04 ; elapsed = 00:00:00.07 . Memory (MB): peak = 5285.801 ; gain = 0.000 ; free physical = 6339 ; free virtual = 151392default:defaulth px� 
�
r%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s ; free physical = %s ; free virtual = %s
480*common2.
Netlist sorting complete. 2default:default2
00:00:00.012default:default2
00:00:00.012default:default2
5285.8012default:default2
0.0002default:default2
63382default:default2
151382default:defaultZ17-722h px� 
�

Phase %s%s
101*constraints2
1.2 2default:default2F
2IO Placement/ Clock Placement/ Build Placer Device2default:defaultZ18-101h px� 
�
�IO Placement failed due to overutilization. This design contains %s I/O ports
 while the target %s, contains only %s available user I/O. The target device has %s usable I/O pins of which %s are already occupied by user-locked I/Os.
 To rectify this issue:
 1. Ensure you are targeting the correct device and package.  Select a larger device or different package if necessary.
 2. Check the top-level ports of the design to ensure the correct number of ports are specified.
 3. Consider design changes to reduce the number of I/Os necessary.
415*place2
15442default:default26
" device: xczu7ev package: ffvc11562default:default2
7192default:default2
7192default:default2
02default:defaultZ30-415h px� 
�
Instance %s (%s) is not placed
68*place2<
&WDataIntxD_reg[0][0]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place29
#WDataIntxD_reg[0][0]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][100]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][100]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][101]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][101]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][102]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][102]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][103]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][103]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][104]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][104]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][105]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][105]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][106]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][106]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][107]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][107]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][108]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][108]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][109]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][109]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][10]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][10]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][110]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][110]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][111]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][111]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][112]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][112]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][113]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][113]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][114]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][114]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][115]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][115]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][116]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][116]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][117]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][117]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][118]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][118]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][119]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][119]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][11]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][11]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][120]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][120]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][121]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][121]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][122]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][122]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][123]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][123]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][124]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][124]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][125]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][125]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][126]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][126]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2>
(WDataIntxD_reg[0][127]_i_4/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2;
%WDataIntxD_reg[0][127]_i_4/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][12]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][12]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][13]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][13]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][14]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][14]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][15]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][15]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][16]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][16]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][17]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][17]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][18]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][18]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][19]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][19]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2<
&WDataIntxD_reg[0][1]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place29
#WDataIntxD_reg[0][1]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][20]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][20]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][21]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][21]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][22]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][22]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][23]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][23]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][24]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][24]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][25]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][25]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][26]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][26]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][27]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][27]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][28]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][28]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2=
'WDataIntxD_reg[0][29]_i_2/IBUFCTRL_INST2default:default2
IBUFCTRL2default:default8Z30-68h px� 
�
Instance %s (%s) is not placed
68*place2:
$WDataIntxD_reg[0][29]_i_2/INBUF_INST2default:default2
INBUF2default:default8Z30-68h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Place 30-682default:default2
1002default:defaultZ17-14h px� 
g
RPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: fe85a67b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 5285.801 ; gain = 0.000 ; free physical = 6339 ; free virtual = 151432default:defaulth px� 
H
3Phase 1 Placer Initialization | Checksum: fe85a67b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 5285.801 ; gain = 0.000 ; free physical = 6297 ; free virtual = 151002default:defaulth px� 
�
�Placer failed with error: '%s'
Please review all ERROR and WARNING messages during placement to understand the cause for failure.
1*	placeflow2*
IO Clock Placer failed2default:defaultZ30-99h px� 
=
(Ending Placer Task | Checksum: fe85a67b
*commonh px� 
�

%s
*constraints2�
�Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 5285.801 ; gain = 0.000 ; free physical = 6266 ; free virtual = 150702default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
492default:default2
12default:default2
12default:default2
1032default:defaultZ4-41h px� 
N

%s failed
30*	vivadotcl2 
place_design2default:defaultZ4-43h px� 
m
Command failed: %s
69*common28
$Placer could not place all instances2default:defaultZ17-69h px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Apr 26 21:34:04 20252default:defaultZ17-206h px� 


End Record