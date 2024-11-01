connect -url tcp:127.0.0.1:3121
source C:/Users/osotosan/2024_10_25_CMB_editable/CMB40_v1/CMB40_v1.sdk/zsys_wrapper_hw_platform_3/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074E8A"} -index 0
loadhw -hw C:/Users/osotosan/2024_10_25_CMB_editable/CMB40_v1/CMB40_v1.sdk/zsys_wrapper_hw_platform_3/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "JTAG-ONB4 2516330074E8A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074E8A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074E8A"} -index 0
dow C:/Users/osotosan/2024_10_25_CMB_editable/CMB40_v1/CMB40_v1.sdk/CMB40_v3/Debug/CMB40_v3.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "JTAG-ONB4 2516330074E8A"} -index 0
con
