lappend auto_path "C:/lscc/diamond/3.12/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) b13
set ::bali::Para(PROJECT) CPLD_rad
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.12/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.12/cae_library/synthesis/vhdl/machxo3d.vhd"}
set ::bali::Para(FILELIST) {"C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/b13.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/comparator.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/comparatorTMR.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/fanout.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/FIFO2UART.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsr.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/lfsrTMR.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/single_unit.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/UART_RX.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/uart_top.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/UART_TX.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/voter.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/b13fifo.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_bench_final/src/Bench_top.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
