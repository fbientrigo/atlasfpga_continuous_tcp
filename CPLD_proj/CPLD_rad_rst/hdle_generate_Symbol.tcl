lappend auto_path "C:/lscc/diamond/3.12/data/script"
package require symbol_generation

set ::bali::Para(MODNAME) uart_top
set ::bali::Para(PROJECT) CPLD_rad_rst
set ::bali::Para(PACKAGE) {"C:/lscc/diamond/3.12/cae_library/vhdl_packages/vdbs"}
set ::bali::Para(PRIMITIVEFILE) {"C:/lscc/diamond/3.12/cae_library/synthesis/vhdl/machxo3d.vhd"}
set ::bali::Para(FILELIST) {"C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/b13.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/comparator.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/comparatorTMR.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/fanout.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/FIFO2UART.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/lfsr.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/lfsrTMR.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/single_unit.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/UART_RX.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/uart_top.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/UART_TX.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/voter.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/b13fifo.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/src/Bench_top.vhd=work" "C:/Users/victo/Desktop/Lattice_proj/CPLD_rad_rst/rst_logic.vhd=work" }
set ::bali::Para(INCLUDEPATH) {}
puts "set parameters done"
::bali::GenerateSymbol
