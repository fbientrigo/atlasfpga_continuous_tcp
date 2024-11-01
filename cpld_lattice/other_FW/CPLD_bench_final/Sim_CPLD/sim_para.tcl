lappend auto_path "C:/lscc/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO3D}
set ::bali::simulation::Para(PROJECT) {Sim_CPLD}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final}
set ::bali::simulation::Para(FILELIST) {"C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/comparator.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/comparator_tb.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsr.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsr_tb.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/voter.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/fanout.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsrTMR.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsrTMR_tb.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/comparatorTMR.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/b13.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/single_unit.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/single_unit_tb.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/UART_RX.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/UART_TX.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/FIFO2UART.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/Bench_top.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/b13fifo.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/uart_top.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/CPLD_rad_tb.vhd" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/top_tb.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo3d}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {comparator_tb}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {0}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
