#defines the real input pin clock, default is 50% duty cycle
#For a ADC ref clk of 25 MHz

#create a virtual clock with opposite edges than Lclk, so it is like the signal that is really generating data_clk
#defines the clock "seen" by the logic (because we take the data from the negative output) so is inverted
#create_generated_clock  -name Lclk_B -source [get_ports {B0_LCLK_P}] -invert -divide_by 1 -add -master_clock Lclk [get_pins microprocessor_subsystem_i/ADC_readout_buff_0/U0/o_Lclk]

#create the generated clock, define the edges from Lclk, best choice.
# 6 veces mas lento que LCLK y proviene de AD_CLK este reloj

# Set two clocks as asynchronous

#set_input_delay -clock [get_clocks Lclk0] -min 3.300 [get_ports {B0_ADC_CH_1_N B0_ADC_CH_1_P B0_ADC_CH_2_N B0_ADC_CH_2_P B0_ADC_CH_3_N B0_ADC_CH_3_P B0_ADC_CH_4_N B0_ADC_CH_4_P B0_ADC_CH_5_N B0_ADC_CH_5_P B0_ADC_CH_6_N B0_ADC_CH_6_P B0_ADC_CH_7_N B0_ADC_CH_7_P B0_ADC_CH_8_N B0_ADC_CH_8_P}]
#set_input_delay -clock [get_clocks Lclk0] -max 5.800 [get_ports {B0_ADC_CH_1_N B0_ADC_CH_1_P B0_ADC_CH_2_N B0_ADC_CH_2_P B0_ADC_CH_3_N B0_ADC_CH_3_P B0_ADC_CH_4_N B0_ADC_CH_4_P B0_ADC_CH_5_N B0_ADC_CH_5_P B0_ADC_CH_6_N B0_ADC_CH_6_P B0_ADC_CH_7_N B0_ADC_CH_7_P B0_ADC_CH_8_N B0_ADC_CH_8_P}]
#set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
#set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
#set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
#connect_debug_port dbg_hub/clk [get_nets clk]



create_clock -period 6.666 -name Lclk0 [get_ports LCLK_MUX_P]
create_clock -period 40.000 -name ADclk0 [get_ports ADCLK_MUX_P]

create_generated_clock -name LCLK_bufg -source [get_ports LCLK_MUX_P] -divide_by 1 -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */BUFG_inst_LCLK/O}]
create_generated_clock -name ADCLK_bufg -source [get_ports ADCLK_MUX_P] -divide_by 1 -add -master_clock ADclk0 [get_pins -hier -filter {NAME =~ */BUFG_inst_ADCLK/O}]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[0]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[1]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[2]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[3]]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets DRS_DTAP_IBUF[4]]

#create_generated_clock -name data_clk -source [get_ports ADCLK_MUX_P] -edges {2 8 14} -add -master_clock Lclk0 [get_pins -hier -filter {NAME =~ */BUFR_inst_LCLK/O}]
#create_generated_clock -name data_clk_G -source [get_pins -hier -filter {NAME =~ */BUFR_inst_ADCLK/O}] -divide_by 1 -add -master_clock ADclk0 [get_pins -hier -filter {NAME =~ */data_clk_bufg/BUFG_O*}]



set_clock_groups -asynchronous -group [get_clocks -include_generated_clocks Lclk*]
set_input_delay -clock [get_clocks clk_fpga_1] -min -add_delay 4.000 [get_ports {DRS_SROUT[*]}]
set_input_delay -clock [get_clocks clk_fpga_1] -max -add_delay 10.000 [get_ports {DRS_SROUT[*]}]
set_input_delay -clock [get_clocks clk_fpga_0] -min -add_delay 4.000 [get_ports ADC_MISO]
set_input_delay -clock [get_clocks clk_fpga_0] -max -add_delay 8.000 [get_ports ADC_MISO]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[0]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[0]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[0]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[0]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[1]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[1]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[1]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[1]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[2]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[2]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[2]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[2]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[3]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[3]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[3]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[3]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[4]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[4]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[4]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[4]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[5]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[5]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[5]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[5]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[6]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[6]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[6]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[6]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_N[7]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_N[7]}]
set_input_delay -clock [get_clocks Lclk0] -min -add_delay 3.000 [get_ports {MUXOUT_P[7]}]
set_input_delay -clock [get_clocks Lclk0] -max -add_delay 6.000 [get_ports {MUXOUT_P[7]}]

#set_output_delay -clock [get_clocks clk_fpga_1] 15.000 [get_ports {{DRS_RSLOAD[0]} {DRS_RSLOAD[1]} {DRS_RSLOAD[2]} {DRS_RSLOAD[3]} {DRS_RSLOAD[4]} {DRS_SRCLK[0]} {DRS_SRCLK[1]} {DRS_SRCLK[2]} {DRS_SRCLK[3]} {DRS_SRCLK[4]} {DRS_DWRITE[0]} {DRS_DWRITE[1]} {DRS_DWRITE[2]} {DRS_DWRITE[3]} {DRS_DWRITE[4]}}]



set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets clk]
