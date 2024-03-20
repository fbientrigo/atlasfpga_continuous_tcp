// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.12.0.240.2
// Netlist written on Tue Aug 30 16:25:04 2022
//
// Verilog Description of module b13fifo
//

module b13fifo (Data, WrClock, RdClock, WrEn, RdEn, Reset, RPReset, 
            Q, Empty, Full) /* synthesis NGD_DRC_MASK=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(14[8:15])
    input [7:0]Data;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    input WrClock;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(17[9:16])
    input RdClock;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(18[9:16])
    input WrEn;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(19[9:13])
    input RdEn;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(20[9:13])
    input Reset;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(21[9:14])
    input RPReset;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(22[9:16])
    output [7:0]Q;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    output Empty;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(24[9:14])
    output Full;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(25[9:13])
    
    wire WrClock_c /* synthesis is_clock=1, SET_AS_NETWORK=WrClock_c */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(17[9:16])
    wire RdClock_c /* synthesis is_clock=1, SET_AS_NETWORK=RdClock_c */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(18[9:16])
    
    wire Data_c_7, Data_c_6, Data_c_5, Data_c_4, Data_c_3, Data_c_2, 
        Data_c_1, Data_c_0, WrEn_c, RdEn_c, Reset_c, RPReset_c, 
        Q_c_7, Q_c_6, Q_c_5, Q_c_4, Q_c_3, Q_c_2, Q_c_1, Q_c_0, 
        Empty_c, Full_c, invout_1, invout_0, func_and_inet, func_and_inet_1, 
        func_and_inet_2, func_and_inet_3, func_and_inet_4, func_and_inet_5, 
        func_and_inet_6, wptr_7_inv, func_and_inet_7, func_and_inet_8, 
        func_and_inet_9, func_and_inet_10, wptr_6_inv, func_and_inet_11, 
        func_and_inet_12, wptr_5_inv, func_and_inet_13, wptr_4_inv, 
        func_and_inet_14, func_and_inet_15, w_g2b_xor_cluster_1, r_g2b_xor_cluster_1, 
        w_gdata_0, w_gdata_1, w_gdata_2, w_gdata_3, w_gdata_4, w_gdata_5, 
        w_gdata_6, w_gdata_7, wptr_4, wptr_5, wptr_6, wptr_7, wptr_8, 
        r_gdata_0, r_gdata_1, r_gdata_2, r_gdata_3, r_gdata_4, r_gdata_5, 
        r_gdata_6, r_gdata_7, rptr_8, w_gcount_0, w_gcount_1, w_gcount_2, 
        w_gcount_3, w_gcount_4, w_gcount_5, w_gcount_6, w_gcount_7, 
        w_gcount_8, r_gcount_0, r_gcount_1, r_gcount_2, r_gcount_3, 
        r_gcount_4, r_gcount_5, r_gcount_6, r_gcount_7, r_gcount_8, 
        w_gcount_r20, w_gcount_r0, w_gcount_r21, w_gcount_r1, w_gcount_r22, 
        w_gcount_r2, w_gcount_r23, w_gcount_r3, w_gcount_r24, w_gcount_r4, 
        w_gcount_r25, w_gcount_r5, w_gcount_r26, w_gcount_r6, w_gcount_r27, 
        w_gcount_r7, w_gcount_r28, w_gcount_r8, r_gcount_w20, r_gcount_w0, 
        r_gcount_w21, r_gcount_w1, r_gcount_w22, r_gcount_w2, r_gcount_w23, 
        r_gcount_w3, r_gcount_w24, r_gcount_w4, r_gcount_w25, r_gcount_w5, 
        r_gcount_w26, r_gcount_w6, r_gcount_w27, r_gcount_w7, r_gcount_w28, 
        r_gcount_w8, rRst, iwcount_0, iwcount_1, w_gctr_ci, iwcount_2, 
        iwcount_3, co0, iwcount_4, iwcount_5, co1, iwcount_6, iwcount_7, 
        co2, iwcount_8, co3, wcount_8, scuba_vhi, ircount_0, ircount_1, 
        r_gctr_ci, ircount_2, ircount_3, co0_1, ircount_4, ircount_5, 
        co1_1, ircount_6, ircount_7, co2_1, ircount_8, co3_1, rcount_8, 
        rdataout7, rdataout6, rdataout5, rdataout4, rdataout3, rdataout2, 
        rdataout1, rdataout0, rptr_7, rptr_6, rptr_5, rptr_4, rden_i, 
        cmp_ci, wcount_r0, wcount_r1, rcount_0, rcount_1, co0_2, 
        wcount_r2, wcount_r3, rcount_2, rcount_3, co1_2, wcount_r4, 
        w_g2b_xor_cluster_0, rcount_4, rcount_5, co2_2, wcount_r6, 
        wcount_r7, rcount_6, rcount_7, co3_2, empty_cmp_clr, empty_cmp_set, 
        empty_d, empty_d_c, wren_i, cmp_ci_1, rcount_w0, rcount_w1, 
        wcount_0, wcount_1, co0_3, rcount_w2, rcount_w3, wcount_2, 
        wcount_3, co1_3, rcount_w4, r_g2b_xor_cluster_0, wcount_4, 
        wcount_5, co2_3, rcount_w6, rcount_w7, wcount_6, wcount_7, 
        co3_3, full_cmp_clr, full_cmp_set, full_d, full_d_c, scuba_vlo, 
        mdL0_0_7, mdL0_0_6, mdL0_0_5, mdL0_0_4, mdL0_0_3, mdL0_0_2, 
        mdL0_0_1, mdL0_0_0, dec0_wre3, mdL0_1_7, mdL0_1_6, mdL0_1_5, 
        mdL0_1_4, mdL0_1_3, mdL0_1_2, mdL0_1_1, mdL0_1_0, dec1_wre7, 
        mdL0_2_7, mdL0_2_6, mdL0_2_5, mdL0_2_4, mdL0_2_3, mdL0_2_2, 
        mdL0_2_1, mdL0_2_0, dec2_wre11, mdL0_3_7, mdL0_3_6, mdL0_3_5, 
        mdL0_3_4, mdL0_3_3, mdL0_3_2, mdL0_3_1, mdL0_3_0, dec3_wre15, 
        mdL0_4_7, mdL0_4_6, mdL0_4_5, mdL0_4_4, mdL0_4_3, mdL0_4_2, 
        mdL0_4_1, mdL0_4_0, dec4_wre19, mdL0_5_7, mdL0_5_6, mdL0_5_5, 
        mdL0_5_4, mdL0_5_3, mdL0_5_2, mdL0_5_1, mdL0_5_0, dec5_wre23, 
        mdL0_6_7, mdL0_6_6, mdL0_6_5, mdL0_6_4, mdL0_6_3, mdL0_6_2, 
        mdL0_6_1, mdL0_6_0, dec6_wre27, mdL0_7_7, mdL0_7_6, mdL0_7_5, 
        mdL0_7_4, mdL0_7_3, mdL0_7_2, mdL0_7_1, mdL0_7_0, dec7_wre31, 
        mdL0_8_7, mdL0_8_6, mdL0_8_5, mdL0_8_4, mdL0_8_3, mdL0_8_2, 
        mdL0_8_1, mdL0_8_0, dec8_wre35, mdL0_9_7, mdL0_9_6, mdL0_9_5, 
        mdL0_9_4, mdL0_9_3, mdL0_9_2, mdL0_9_1, mdL0_9_0, dec9_wre39, 
        mdL0_10_7, mdL0_10_6, mdL0_10_5, mdL0_10_4, mdL0_10_3, mdL0_10_2, 
        mdL0_10_1, mdL0_10_0, dec10_wre43, mdL0_11_7, mdL0_11_6, mdL0_11_5, 
        mdL0_11_4, mdL0_11_3, mdL0_11_2, mdL0_11_1, mdL0_11_0, dec11_wre47, 
        mdL0_12_7, mdL0_12_6, mdL0_12_5, mdL0_12_4, mdL0_12_3, mdL0_12_2, 
        mdL0_12_1, mdL0_12_0, dec12_wre51, mdL0_13_7, mdL0_13_6, mdL0_13_5, 
        mdL0_13_4, mdL0_13_3, mdL0_13_2, mdL0_13_1, mdL0_13_0, dec13_wre55, 
        mdL0_14_7, mdL0_14_6, mdL0_14_5, mdL0_14_4, mdL0_14_3, mdL0_14_2, 
        mdL0_14_1, mdL0_14_0, dec14_wre59, mdL0_15_7, mdL0_15_6, mdL0_15_5, 
        mdL0_15_4, mdL0_15_3, mdL0_15_2, mdL0_15_1, mdL0_15_0, rptr_3, 
        rptr_2, rptr_1, rptr_0, dec15_wre63, wptr_3, wptr_2, wptr_1, 
        wptr_0, n1703, n1704, n1705, n1706, n1707, n1708, n1709, 
        n1710, n1711, n1712, n1713, n1714, n1715, n1716, n1718, 
        n1719, n1720, n1721, n1722, n1723, n1724, n1725, n1726, 
        n1727, n1728, n1729, n1730, n1731, n1733, n1734, n1735, 
        n1736, n1737, n1738, n1739, n1740, n1741, n1742, n1743, 
        n1744, n1745, n1746, n1748, n1749, n1750, n1751, n1752, 
        n1753, n1754, n1755, n1756, n1757, n1758, n1759, n1760, 
        n1761, n1763, n1764, n1765, n1766, n1767, n1768, n1769, 
        n1770, n1771, n1772, n1773, n1774, n1775, n1776, n1778, 
        n1779, n1780, n1781, n1782, n1783, n1784, n1785, n1786, 
        n1787, n1788, n1789, n1790, n1791, n1793, n1794, n1795, 
        n1796, n1797, n1798, n1799, n1800, n1801, n1802, n1803, 
        n1804, n1805, n1806, n1808, n1809, n1810, n1811, n1812, 
        n1813, n1814, n1815, n1816, n1817, n1818, n1819, n1820, 
        n1821;
    
    LUT4 i233_3_lut (.A(mdL0_8_0), .B(mdL0_9_0), .C(rptr_4), .Z(n1812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i233_3_lut.init = 16'hcaca;
    LUT4 i234_3_lut (.A(mdL0_10_0), .B(mdL0_11_0), .C(rptr_4), .Z(n1813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i234_3_lut.init = 16'hcaca;
    LUT4 i236_3_lut (.A(mdL0_14_0), .B(mdL0_15_0), .C(rptr_4), .Z(n1815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i236_3_lut.init = 16'hcaca;
    LUT4 i235_3_lut (.A(mdL0_12_0), .B(mdL0_13_0), .C(rptr_4), .Z(n1814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i235_3_lut.init = 16'hcaca;
    LUT4 i231_3_lut (.A(mdL0_4_0), .B(mdL0_5_0), .C(rptr_4), .Z(n1810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i231_3_lut.init = 16'hcaca;
    LUT4 i232_3_lut (.A(mdL0_6_0), .B(mdL0_7_0), .C(rptr_4), .Z(n1811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i232_3_lut.init = 16'hcaca;
    LUT4 i229_3_lut (.A(mdL0_0_0), .B(mdL0_1_0), .C(rptr_4), .Z(n1808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i229_3_lut.init = 16'hcaca;
    LUT4 i230_3_lut (.A(mdL0_2_0), .B(mdL0_3_0), .C(rptr_4), .Z(n1809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i230_3_lut.init = 16'hcaca;
    LUT4 i124_3_lut (.A(mdL0_0_7), .B(mdL0_1_7), .C(rptr_4), .Z(n1703)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i124_3_lut.init = 16'hcaca;
    LUT4 i125_3_lut (.A(mdL0_2_7), .B(mdL0_3_7), .C(rptr_4), .Z(n1704)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i125_3_lut.init = 16'hcaca;
    LUT4 i126_3_lut (.A(mdL0_4_7), .B(mdL0_5_7), .C(rptr_4), .Z(n1705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i126_3_lut.init = 16'hcaca;
    LUT4 i127_3_lut (.A(mdL0_6_7), .B(mdL0_7_7), .C(rptr_4), .Z(n1706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i127_3_lut.init = 16'hcaca;
    LUT4 i128_3_lut (.A(mdL0_8_7), .B(mdL0_9_7), .C(rptr_4), .Z(n1707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i128_3_lut.init = 16'hcaca;
    LUT4 i129_3_lut (.A(mdL0_10_7), .B(mdL0_11_7), .C(rptr_4), .Z(n1708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i129_3_lut.init = 16'hcaca;
    LUT4 i130_3_lut (.A(mdL0_12_7), .B(mdL0_13_7), .C(rptr_4), .Z(n1709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i130_3_lut.init = 16'hcaca;
    LUT4 i131_3_lut (.A(mdL0_14_7), .B(mdL0_15_7), .C(rptr_4), .Z(n1710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i131_3_lut.init = 16'hcaca;
    LUT4 i139_3_lut (.A(mdL0_0_6), .B(mdL0_1_6), .C(rptr_4), .Z(n1718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i139_3_lut.init = 16'hcaca;
    LUT4 i140_3_lut (.A(mdL0_2_6), .B(mdL0_3_6), .C(rptr_4), .Z(n1719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i140_3_lut.init = 16'hcaca;
    LUT4 i141_3_lut (.A(mdL0_4_6), .B(mdL0_5_6), .C(rptr_4), .Z(n1720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i141_3_lut.init = 16'hcaca;
    LUT4 i142_3_lut (.A(mdL0_6_6), .B(mdL0_7_6), .C(rptr_4), .Z(n1721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i142_3_lut.init = 16'hcaca;
    LUT4 i143_3_lut (.A(mdL0_8_6), .B(mdL0_9_6), .C(rptr_4), .Z(n1722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i143_3_lut.init = 16'hcaca;
    LUT4 i144_3_lut (.A(mdL0_10_6), .B(mdL0_11_6), .C(rptr_4), .Z(n1723)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i144_3_lut.init = 16'hcaca;
    LUT4 i145_3_lut (.A(mdL0_12_6), .B(mdL0_13_6), .C(rptr_4), .Z(n1724)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i145_3_lut.init = 16'hcaca;
    LUT4 i146_3_lut (.A(mdL0_14_6), .B(mdL0_15_6), .C(rptr_4), .Z(n1725)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i146_3_lut.init = 16'hcaca;
    LUT4 i154_3_lut (.A(mdL0_0_5), .B(mdL0_1_5), .C(rptr_4), .Z(n1733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i154_3_lut.init = 16'hcaca;
    FD1P3DX FF_98 (.D(iwcount_1), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1017[12:19])
    defparam FF_98.GSR = "ENABLED";
    FD1P3DX FF_97 (.D(iwcount_2), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1021[12:19])
    defparam FF_97.GSR = "ENABLED";
    FD1P3DX FF_96 (.D(iwcount_3), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1025[12:19])
    defparam FF_96.GSR = "ENABLED";
    FD1P3DX FF_95 (.D(iwcount_4), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1029[12:19])
    defparam FF_95.GSR = "ENABLED";
    FD1P3DX FF_94 (.D(iwcount_5), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1033[12:19])
    defparam FF_94.GSR = "ENABLED";
    FD1P3DX FF_93 (.D(iwcount_6), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1037[12:19])
    defparam FF_93.GSR = "ENABLED";
    FD1P3DX FF_92 (.D(iwcount_7), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1041[12:19])
    defparam FF_92.GSR = "ENABLED";
    FD1P3DX FF_91 (.D(iwcount_8), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1045[12:19])
    defparam FF_91.GSR = "ENABLED";
    FD1P3DX FF_90 (.D(w_gdata_0), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1049[12:19])
    defparam FF_90.GSR = "ENABLED";
    FD1P3DX FF_89 (.D(w_gdata_1), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1053[12:19])
    defparam FF_89.GSR = "ENABLED";
    FD1P3DX FF_88 (.D(w_gdata_2), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1057[12:19])
    defparam FF_88.GSR = "ENABLED";
    FD1P3DX FF_87 (.D(w_gdata_3), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1061[12:19])
    defparam FF_87.GSR = "ENABLED";
    FD1P3DX FF_86 (.D(w_gdata_4), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1065[12:19])
    defparam FF_86.GSR = "ENABLED";
    FD1P3DX FF_85 (.D(w_gdata_5), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1069[12:19])
    defparam FF_85.GSR = "ENABLED";
    FD1P3DX FF_84 (.D(w_gdata_6), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1073[12:19])
    defparam FF_84.GSR = "ENABLED";
    FD1P3DX FF_83 (.D(w_gdata_7), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1077[12:19])
    defparam FF_83.GSR = "ENABLED";
    FD1P3DX FF_82 (.D(wcount_8), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(w_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1081[12:19])
    defparam FF_82.GSR = "ENABLED";
    FD1P3DX FF_81 (.D(wcount_0), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1085[12:19])
    defparam FF_81.GSR = "ENABLED";
    FD1P3DX FF_80 (.D(wcount_1), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1089[12:19])
    defparam FF_80.GSR = "ENABLED";
    FD1P3DX FF_79 (.D(wcount_2), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1093[12:19])
    defparam FF_79.GSR = "ENABLED";
    FD1P3DX FF_78 (.D(wcount_3), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1097[12:19])
    defparam FF_78.GSR = "ENABLED";
    FD1P3DX FF_77 (.D(wcount_4), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1101[12:19])
    defparam FF_77.GSR = "ENABLED";
    FD1P3DX FF_76 (.D(wcount_5), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1105[12:19])
    defparam FF_76.GSR = "ENABLED";
    FD1P3DX FF_75 (.D(wcount_6), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1109[12:19])
    defparam FF_75.GSR = "ENABLED";
    FD1P3DX FF_74 (.D(wcount_7), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1113[12:19])
    defparam FF_74.GSR = "ENABLED";
    FD1P3DX FF_73 (.D(wcount_8), .SP(wren_i), .CK(WrClock_c), .CD(Reset_c), 
            .Q(wptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1117[12:19])
    defparam FF_73.GSR = "ENABLED";
    FD1P3BX FF_72 (.D(ircount_0), .SP(rden_i), .CK(RdClock_c), .PD(rRst), 
            .Q(rcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1121[12:19])
    defparam FF_72.GSR = "ENABLED";
    FD1P3DX FF_71 (.D(ircount_1), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1125[12:19])
    defparam FF_71.GSR = "ENABLED";
    FD1P3DX FF_70 (.D(ircount_2), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1129[12:19])
    defparam FF_70.GSR = "ENABLED";
    FD1P3DX FF_69 (.D(ircount_3), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1133[12:19])
    defparam FF_69.GSR = "ENABLED";
    FD1P3DX FF_68 (.D(ircount_4), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1137[12:19])
    defparam FF_68.GSR = "ENABLED";
    FD1P3DX FF_67 (.D(ircount_5), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1141[12:19])
    defparam FF_67.GSR = "ENABLED";
    FD1P3DX FF_66 (.D(ircount_6), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1145[12:19])
    defparam FF_66.GSR = "ENABLED";
    FD1P3DX FF_65 (.D(ircount_7), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1149[12:19])
    defparam FF_65.GSR = "ENABLED";
    FD1P3DX FF_64 (.D(ircount_8), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1153[12:19])
    defparam FF_64.GSR = "ENABLED";
    FD1P3DX FF_63 (.D(r_gdata_0), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1157[12:19])
    defparam FF_63.GSR = "ENABLED";
    FD1P3DX FF_62 (.D(r_gdata_1), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1161[12:19])
    defparam FF_62.GSR = "ENABLED";
    FD1P3DX FF_61 (.D(r_gdata_2), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1165[12:19])
    defparam FF_61.GSR = "ENABLED";
    FD1P3DX FF_60 (.D(r_gdata_3), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1169[12:19])
    defparam FF_60.GSR = "ENABLED";
    FD1P3DX FF_59 (.D(r_gdata_4), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1173[12:19])
    defparam FF_59.GSR = "ENABLED";
    FD1P3DX FF_58 (.D(r_gdata_5), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1177[12:19])
    defparam FF_58.GSR = "ENABLED";
    FD1P3DX FF_57 (.D(r_gdata_6), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1181[12:19])
    defparam FF_57.GSR = "ENABLED";
    FD1P3DX FF_56 (.D(r_gdata_7), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1185[12:19])
    defparam FF_56.GSR = "ENABLED";
    FD1P3DX FF_55 (.D(rcount_8), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(r_gcount_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1189[12:19])
    defparam FF_55.GSR = "ENABLED";
    FD1P3DX FF_54 (.D(rcount_0), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1193[12:19])
    defparam FF_54.GSR = "ENABLED";
    FD1P3DX FF_53 (.D(rcount_1), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1197[12:19])
    defparam FF_53.GSR = "ENABLED";
    FD1P3DX FF_52 (.D(rcount_2), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1201[12:19])
    defparam FF_52.GSR = "ENABLED";
    FD1P3DX FF_51 (.D(rcount_3), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1205[12:19])
    defparam FF_51.GSR = "ENABLED";
    FD1P3DX FF_50 (.D(rcount_4), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1209[12:19])
    defparam FF_50.GSR = "ENABLED";
    FD1P3DX FF_49 (.D(rcount_5), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1213[12:19])
    defparam FF_49.GSR = "ENABLED";
    FD1P3DX FF_48 (.D(rcount_6), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1217[12:19])
    defparam FF_48.GSR = "ENABLED";
    FD1P3DX FF_47 (.D(rcount_7), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1221[12:19])
    defparam FF_47.GSR = "ENABLED";
    FD1P3DX FF_46 (.D(rcount_8), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(rptr_8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1225[12:19])
    defparam FF_46.GSR = "ENABLED";
    FD1P3DX FF_45 (.D(rdataout0), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1229[12:19])
    defparam FF_45.GSR = "ENABLED";
    FD1P3DX FF_44 (.D(rdataout1), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1233[12:19])
    defparam FF_44.GSR = "ENABLED";
    FD1P3DX FF_43 (.D(rdataout2), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1237[12:19])
    defparam FF_43.GSR = "ENABLED";
    FD1P3DX FF_42 (.D(rdataout3), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1241[12:19])
    defparam FF_42.GSR = "ENABLED";
    FD1P3DX FF_41 (.D(rdataout4), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1245[12:19])
    defparam FF_41.GSR = "ENABLED";
    FD1P3DX FF_40 (.D(rdataout5), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1249[12:19])
    defparam FF_40.GSR = "ENABLED";
    FD1P3DX FF_39 (.D(rdataout6), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1253[12:19])
    defparam FF_39.GSR = "ENABLED";
    FD1P3DX FF_38 (.D(rdataout7), .SP(rden_i), .CK(RdClock_c), .CD(rRst), 
            .Q(Q_c_7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1257[12:19])
    defparam FF_38.GSR = "ENABLED";
    FD1S3DX FF_37 (.D(w_gcount_0), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1261[12:19])
    defparam FF_37.GSR = "ENABLED";
    FD1S3DX FF_36 (.D(w_gcount_1), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1264[12:19])
    defparam FF_36.GSR = "ENABLED";
    FD1S3DX FF_35 (.D(w_gcount_2), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1267[12:19])
    defparam FF_35.GSR = "ENABLED";
    FD1S3DX FF_34 (.D(w_gcount_3), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1270[12:19])
    defparam FF_34.GSR = "ENABLED";
    FD1S3DX FF_33 (.D(w_gcount_4), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1273[12:19])
    defparam FF_33.GSR = "ENABLED";
    FD1S3DX FF_32 (.D(w_gcount_5), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1276[12:19])
    defparam FF_32.GSR = "ENABLED";
    FD1S3DX FF_31 (.D(w_gcount_6), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1279[12:19])
    defparam FF_31.GSR = "ENABLED";
    FD1S3DX FF_30 (.D(w_gcount_7), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1282[12:19])
    defparam FF_30.GSR = "ENABLED";
    FD1S3DX FF_29 (.D(w_gcount_8), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1285[12:19])
    defparam FF_29.GSR = "ENABLED";
    FD1S3DX FF_28 (.D(r_gcount_0), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1288[12:19])
    defparam FF_28.GSR = "ENABLED";
    FD1S3DX FF_27 (.D(r_gcount_1), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w1)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1291[12:19])
    defparam FF_27.GSR = "ENABLED";
    FD1S3DX FF_26 (.D(r_gcount_2), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w2)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1294[12:19])
    defparam FF_26.GSR = "ENABLED";
    FD1S3DX FF_25 (.D(r_gcount_3), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w3)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1297[12:19])
    defparam FF_25.GSR = "ENABLED";
    FD1S3DX FF_24 (.D(r_gcount_4), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w4)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1300[12:19])
    defparam FF_24.GSR = "ENABLED";
    FD1S3DX FF_23 (.D(r_gcount_5), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w5)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1303[12:19])
    defparam FF_23.GSR = "ENABLED";
    FD1S3DX FF_22 (.D(r_gcount_6), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w6)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1306[12:19])
    defparam FF_22.GSR = "ENABLED";
    FD1S3DX FF_21 (.D(r_gcount_7), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w7)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1309[12:19])
    defparam FF_21.GSR = "ENABLED";
    FD1S3DX FF_20 (.D(r_gcount_8), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w8)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1312[12:19])
    defparam FF_20.GSR = "ENABLED";
    FD1S3DX FF_19 (.D(w_gcount_r0), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1315[12:19])
    defparam FF_19.GSR = "ENABLED";
    FD1S3DX FF_18 (.D(w_gcount_r1), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1319[12:19])
    defparam FF_18.GSR = "ENABLED";
    FD1S3DX FF_17 (.D(w_gcount_r2), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1323[12:19])
    defparam FF_17.GSR = "ENABLED";
    FD1S3DX FF_16 (.D(w_gcount_r3), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1327[12:19])
    defparam FF_16.GSR = "ENABLED";
    FD1S3DX FF_15 (.D(w_gcount_r4), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1331[12:19])
    defparam FF_15.GSR = "ENABLED";
    FD1S3DX FF_14 (.D(w_gcount_r5), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1335[12:19])
    defparam FF_14.GSR = "ENABLED";
    FD1S3DX FF_13 (.D(w_gcount_r6), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1339[12:19])
    defparam FF_13.GSR = "ENABLED";
    FD1S3DX FF_12 (.D(w_gcount_r7), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1343[12:19])
    defparam FF_12.GSR = "ENABLED";
    FD1S3DX FF_11 (.D(w_gcount_r8), .CK(RdClock_c), .CD(Reset_c), .Q(w_gcount_r28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1347[12:19])
    defparam FF_11.GSR = "ENABLED";
    FD1S3DX FF_10 (.D(r_gcount_w0), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w20)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1351[12:19])
    defparam FF_10.GSR = "ENABLED";
    FD1S3DX FF_9 (.D(r_gcount_w1), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w21)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1354[11:18])
    defparam FF_9.GSR = "ENABLED";
    FD1S3DX FF_8 (.D(r_gcount_w2), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w22)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1357[11:18])
    defparam FF_8.GSR = "ENABLED";
    FD1S3DX FF_7 (.D(r_gcount_w3), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w23)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1360[11:18])
    defparam FF_7.GSR = "ENABLED";
    FD1S3DX FF_6 (.D(r_gcount_w4), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w24)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1363[11:18])
    defparam FF_6.GSR = "ENABLED";
    FD1S3DX FF_5 (.D(r_gcount_w5), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w25)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1366[11:18])
    defparam FF_5.GSR = "ENABLED";
    FD1S3DX FF_4 (.D(r_gcount_w6), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w26)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1369[11:18])
    defparam FF_4.GSR = "ENABLED";
    FD1S3DX FF_3 (.D(r_gcount_w7), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w27)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1372[11:18])
    defparam FF_3.GSR = "ENABLED";
    FD1S3DX FF_2 (.D(r_gcount_w8), .CK(WrClock_c), .CD(rRst), .Q(r_gcount_w28)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1375[11:18])
    defparam FF_2.GSR = "ENABLED";
    FD1S3BX FF_1 (.D(empty_d), .CK(RdClock_c), .PD(rRst), .Q(Empty_c)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1378[11:18])
    defparam FF_1.GSR = "ENABLED";
    FD1S3DX FF_0 (.D(full_d), .CK(WrClock_c), .CD(Reset_c), .Q(Full_c)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1381[11:18])
    defparam FF_0.GSR = "ENABLED";
    FADD2B w_gctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), 
           .B1(scuba_vhi), .CI(scuba_vlo), .COUT(w_gctr_ci)) /* synthesis syn_instantiated=1 */ ;
    CU2 w_gctr_0 (.CI(w_gctr_ci), .PC0(wcount_0), .PC1(wcount_1), .CO(co0), 
        .NC0(iwcount_0), .NC1(iwcount_1)) /* synthesis syn_instantiated=1 */ ;
    CU2 w_gctr_1 (.CI(co0), .PC0(wcount_2), .PC1(wcount_3), .CO(co1), 
        .NC0(iwcount_2), .NC1(iwcount_3)) /* synthesis syn_instantiated=1 */ ;
    CU2 w_gctr_2 (.CI(co1), .PC0(wcount_4), .PC1(wcount_5), .CO(co2), 
        .NC0(iwcount_4), .NC1(iwcount_5)) /* synthesis syn_instantiated=1 */ ;
    CU2 w_gctr_3 (.CI(co2), .PC0(wcount_6), .PC1(wcount_7), .CO(co3), 
        .NC0(iwcount_6), .NC1(iwcount_7)) /* synthesis syn_instantiated=1 */ ;
    CU2 w_gctr_4 (.CI(co3), .PC0(wcount_8), .PC1(scuba_vlo), .NC0(iwcount_8)) /* synthesis syn_instantiated=1 */ ;
    VHI scuba_vhi_inst (.Z(scuba_vhi));
    FADD2B r_gctr_cia (.A0(scuba_vlo), .A1(scuba_vhi), .B0(scuba_vlo), 
           .B1(scuba_vhi), .CI(scuba_vlo), .COUT(r_gctr_ci)) /* synthesis syn_instantiated=1 */ ;
    CU2 r_gctr_0 (.CI(r_gctr_ci), .PC0(rcount_0), .PC1(rcount_1), .CO(co0_1), 
        .NC0(ircount_0), .NC1(ircount_1)) /* synthesis syn_instantiated=1 */ ;
    CU2 r_gctr_1 (.CI(co0_1), .PC0(rcount_2), .PC1(rcount_3), .CO(co1_1), 
        .NC0(ircount_2), .NC1(ircount_3)) /* synthesis syn_instantiated=1 */ ;
    CU2 r_gctr_2 (.CI(co1_1), .PC0(rcount_4), .PC1(rcount_5), .CO(co2_1), 
        .NC0(ircount_4), .NC1(ircount_5)) /* synthesis syn_instantiated=1 */ ;
    CU2 r_gctr_3 (.CI(co2_1), .PC0(rcount_6), .PC1(rcount_7), .CO(co3_1), 
        .NC0(ircount_6), .NC1(ircount_7)) /* synthesis syn_instantiated=1 */ ;
    CU2 r_gctr_4 (.CI(co3_1), .PC0(rcount_8), .PC1(scuba_vlo), .NC0(ircount_8)) /* synthesis syn_instantiated=1 */ ;
    LUT4 i155_3_lut (.A(mdL0_2_5), .B(mdL0_3_5), .C(rptr_4), .Z(n1734)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i155_3_lut.init = 16'hcaca;
    LUT4 i156_3_lut (.A(mdL0_4_5), .B(mdL0_5_5), .C(rptr_4), .Z(n1735)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i156_3_lut.init = 16'hcaca;
    LUT4 i157_3_lut (.A(mdL0_6_5), .B(mdL0_7_5), .C(rptr_4), .Z(n1736)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i157_3_lut.init = 16'hcaca;
    LUT4 i158_3_lut (.A(mdL0_8_5), .B(mdL0_9_5), .C(rptr_4), .Z(n1737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i158_3_lut.init = 16'hcaca;
    LUT4 i159_3_lut (.A(mdL0_10_5), .B(mdL0_11_5), .C(rptr_4), .Z(n1738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i159_3_lut.init = 16'hcaca;
    LUT4 i160_3_lut (.A(mdL0_12_5), .B(mdL0_13_5), .C(rptr_4), .Z(n1739)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i160_3_lut.init = 16'hcaca;
    LUT4 i161_3_lut (.A(mdL0_14_5), .B(mdL0_15_5), .C(rptr_4), .Z(n1740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i161_3_lut.init = 16'hcaca;
    LUT4 i169_3_lut (.A(mdL0_0_4), .B(mdL0_1_4), .C(rptr_4), .Z(n1748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i169_3_lut.init = 16'hcaca;
    LUT4 i170_3_lut (.A(mdL0_2_4), .B(mdL0_3_4), .C(rptr_4), .Z(n1749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i170_3_lut.init = 16'hcaca;
    AGEB2 empty_cmp_0 (.A0(rcount_0), .A1(rcount_1), .B0(wcount_r0), .B1(wcount_r1), 
          .CI(cmp_ci), .GE(co0_2)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 empty_cmp_1 (.A0(rcount_2), .A1(rcount_3), .B0(wcount_r2), .B1(wcount_r3), 
          .CI(co0_2), .GE(co1_2)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 empty_cmp_2 (.A0(rcount_4), .A1(rcount_5), .B0(wcount_r4), .B1(w_g2b_xor_cluster_0), 
          .CI(co1_2), .GE(co2_2)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 empty_cmp_3 (.A0(rcount_6), .A1(rcount_7), .B0(wcount_r6), .B1(wcount_r7), 
          .CI(co2_2), .GE(co3_2)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 empty_cmp_4 (.A0(empty_cmp_set), .A1(scuba_vlo), .B0(empty_cmp_clr), 
          .B1(scuba_vlo), .CI(co3_2), .GE(empty_d_c)) /* synthesis syn_instantiated=1 */ ;
    FADD2B a0 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
           .CI(empty_d_c), .S0(empty_d)) /* synthesis syn_instantiated=1 */ ;
    FADD2B full_cmp_ci_a (.A0(scuba_vlo), .A1(wren_i), .B0(scuba_vlo), 
           .B1(wren_i), .CI(scuba_vlo), .COUT(cmp_ci_1)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 full_cmp_0 (.A0(wcount_0), .A1(wcount_1), .B0(rcount_w0), .B1(rcount_w1), 
          .CI(cmp_ci_1), .GE(co0_3)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 full_cmp_1 (.A0(wcount_2), .A1(wcount_3), .B0(rcount_w2), .B1(rcount_w3), 
          .CI(co0_3), .GE(co1_3)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 full_cmp_2 (.A0(wcount_4), .A1(wcount_5), .B0(rcount_w4), .B1(r_g2b_xor_cluster_0), 
          .CI(co1_3), .GE(co2_3)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 full_cmp_3 (.A0(wcount_6), .A1(wcount_7), .B0(rcount_w6), .B1(rcount_w7), 
          .CI(co2_3), .GE(co3_3)) /* synthesis syn_instantiated=1 */ ;
    AGEB2 full_cmp_4 (.A0(full_cmp_set), .A1(scuba_vlo), .B0(full_cmp_clr), 
          .B1(scuba_vlo), .CI(co3_3), .GE(full_d_c)) /* synthesis syn_instantiated=1 */ ;
    VLO scuba_vlo_inst (.Z(scuba_vlo));
    FADD2B a1 (.A0(scuba_vlo), .A1(scuba_vlo), .B0(scuba_vlo), .B1(scuba_vlo), 
           .CI(full_d_c), .S0(full_d)) /* synthesis syn_instantiated=1 */ ;
    DPR16X4C fifo_pfu_0_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec0_wre3), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_0_4), 
            .DO1(mdL0_0_5), .DO2(mdL0_0_6), .DO3(mdL0_0_7)) /* synthesis MEM_INIT_FILE="(0-15)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_0_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_0_0.initval = "0x0000000000000000";
    LUT4 i171_3_lut (.A(mdL0_4_4), .B(mdL0_5_4), .C(rptr_4), .Z(n1750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i171_3_lut.init = 16'hcaca;
    LUT4 i172_3_lut (.A(mdL0_6_4), .B(mdL0_7_4), .C(rptr_4), .Z(n1751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i172_3_lut.init = 16'hcaca;
    LUT4 i173_3_lut (.A(mdL0_8_4), .B(mdL0_9_4), .C(rptr_4), .Z(n1752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i173_3_lut.init = 16'hcaca;
    LUT4 i174_3_lut (.A(mdL0_10_4), .B(mdL0_11_4), .C(rptr_4), .Z(n1753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i174_3_lut.init = 16'hcaca;
    LUT4 i175_3_lut (.A(mdL0_12_4), .B(mdL0_13_4), .C(rptr_4), .Z(n1754)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i175_3_lut.init = 16'hcaca;
    LUT4 i176_3_lut (.A(mdL0_14_4), .B(mdL0_15_4), .C(rptr_4), .Z(n1755)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i176_3_lut.init = 16'hcaca;
    LUT4 i184_3_lut (.A(mdL0_0_3), .B(mdL0_1_3), .C(rptr_4), .Z(n1763)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i184_3_lut.init = 16'hcaca;
    LUT4 i185_3_lut (.A(mdL0_2_3), .B(mdL0_3_3), .C(rptr_4), .Z(n1764)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i185_3_lut.init = 16'hcaca;
    LUT4 i186_3_lut (.A(mdL0_4_3), .B(mdL0_5_3), .C(rptr_4), .Z(n1765)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i186_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(scuba_vhi));
    IB RPReset_pad (.I(RPReset), .O(RPReset_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(22[9:16])
    IB Reset_pad (.I(Reset), .O(Reset_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(21[9:14])
    IB RdEn_pad (.I(RdEn), .O(RdEn_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(20[9:13])
    IB WrEn_pad (.I(WrEn), .O(WrEn_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(19[9:13])
    IB RdClock_pad (.I(RdClock), .O(RdClock_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(18[9:16])
    IB WrClock_pad (.I(WrClock), .O(WrClock_c));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(17[9:16])
    IB Data_pad_0 (.I(Data[0]), .O(Data_c_0));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_1 (.I(Data[1]), .O(Data_c_1));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_2 (.I(Data[2]), .O(Data_c_2));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_3 (.I(Data[3]), .O(Data_c_3));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_4 (.I(Data[4]), .O(Data_c_4));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_5 (.I(Data[5]), .O(Data_c_5));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_6 (.I(Data[6]), .O(Data_c_6));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    IB Data_pad_7 (.I(Data[7]), .O(Data_c_7));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(16[9:13])
    OB Full_pad (.I(Full_c), .O(Full));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(25[9:13])
    OB Empty_pad (.I(Empty_c), .O(Empty));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(24[9:14])
    OB Q_pad_0 (.I(Q_c_0), .O(Q[0]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_1 (.I(Q_c_1), .O(Q[1]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_2 (.I(Q_c_2), .O(Q[2]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_3 (.I(Q_c_3), .O(Q[3]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_4 (.I(Q_c_4), .O(Q[4]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_5 (.I(Q_c_5), .O(Q[5]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_6 (.I(Q_c_6), .O(Q[6]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    OB Q_pad_7 (.I(Q_c_7), .O(Q[7]));   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(23[9:10])
    AND2 AND2_t18 (.A(WrEn_c), .B(invout_1), .Z(wren_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(664[15:19])
    INV INV_5 (.A(Full_c), .Z(invout_1));
    AND2 AND2_t17 (.A(RdEn_c), .B(invout_0), .Z(rden_i)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(670[15:19])
    INV INV_4 (.A(Empty_c), .Z(invout_0));
    OR2 OR2_t16 (.A(Reset_c), .B(RPReset_c), .Z(rRst)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(676[14:17])
    XOR2 XOR2_t15 (.A(wcount_0), .B(wcount_1), .Z(w_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(679[15:19])
    XOR2 XOR2_t14 (.A(wcount_1), .B(wcount_2), .Z(w_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(682[15:19])
    XOR2 XOR2_t13 (.A(wcount_2), .B(wcount_3), .Z(w_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(685[15:19])
    XOR2 XOR2_t12 (.A(wcount_3), .B(wcount_4), .Z(w_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(688[15:19])
    XOR2 XOR2_t11 (.A(wcount_4), .B(wcount_5), .Z(w_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(691[15:19])
    XOR2 XOR2_t10 (.A(wcount_5), .B(wcount_6), .Z(w_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(694[15:19])
    XOR2 XOR2_t9 (.A(wcount_6), .B(wcount_7), .Z(w_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(697[14:18])
    XOR2 XOR2_t8 (.A(wcount_7), .B(wcount_8), .Z(w_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(700[14:18])
    XOR2 XOR2_t7 (.A(rcount_0), .B(rcount_1), .Z(r_gdata_0)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(703[14:18])
    XOR2 XOR2_t6 (.A(rcount_1), .B(rcount_2), .Z(r_gdata_1)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(706[14:18])
    XOR2 XOR2_t5 (.A(rcount_2), .B(rcount_3), .Z(r_gdata_2)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(709[14:18])
    XOR2 XOR2_t4 (.A(rcount_3), .B(rcount_4), .Z(r_gdata_3)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(712[14:18])
    XOR2 XOR2_t3 (.A(rcount_4), .B(rcount_5), .Z(r_gdata_4)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(715[14:18])
    XOR2 XOR2_t2 (.A(rcount_5), .B(rcount_6), .Z(r_gdata_5)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(718[14:18])
    XOR2 XOR2_t1 (.A(rcount_6), .B(rcount_7), .Z(r_gdata_6)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(721[14:18])
    XOR2 XOR2_t0 (.A(rcount_7), .B(rcount_8), .Z(r_gdata_7)) /* synthesis syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(724[14:18])
    INV INV_3 (.A(wptr_4), .Z(wptr_4_inv));
    INV INV_2 (.A(wptr_5), .Z(wptr_5_inv));
    INV INV_1 (.A(wptr_6), .Z(wptr_6_inv));
    INV INV_0 (.A(wptr_7), .Z(wptr_7_inv));
    ROM16X1A LUT4_53 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(scuba_vhi), .DO0(func_and_inet)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_53.initval = 16'b1000000000000000;
    ROM16X1A LUT4_52 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet), .DO0(dec0_wre3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_52.initval = 16'b1000000000000000;
    ROM16X1A LUT4_51 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_51.initval = 16'b1000000000000000;
    ROM16X1A LUT4_50 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_1), .DO0(dec1_wre7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_50.initval = 16'b1000000000000000;
    ROM16X1A LUT4_49 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_49.initval = 16'b1000000000000000;
    ROM16X1A LUT4_48 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_2), .DO0(dec2_wre11)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_48.initval = 16'b1000000000000000;
    ROM16X1A LUT4_47 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_47.initval = 16'b1000000000000000;
    ROM16X1A LUT4_46 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_3), .DO0(dec3_wre15)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_46.initval = 16'b1000000000000000;
    ROM16X1A LUT4_45 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(scuba_vhi), .DO0(func_and_inet_4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_45.initval = 16'b1000000000000000;
    ROM16X1A LUT4_44 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_4), .DO0(dec4_wre19)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_44.initval = 16'b1000000000000000;
    ROM16X1A LUT4_43 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_5)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_43.initval = 16'b1000000000000000;
    ROM16X1A LUT4_42 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_5), .DO0(dec5_wre23)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_42.initval = 16'b1000000000000000;
    ROM16X1A LUT4_41 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_41.initval = 16'b1000000000000000;
    ROM16X1A LUT4_40 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_6), .DO0(dec6_wre27)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_40.initval = 16'b1000000000000000;
    ROM16X1A LUT4_39 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_39.initval = 16'b1000000000000000;
    ROM16X1A LUT4_38 (.AD0(scuba_vhi), .AD1(wptr_7_inv), .AD2(wptr_6), 
            .AD3(func_and_inet_7), .DO0(dec7_wre31)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_38.initval = 16'b1000000000000000;
    ROM16X1A LUT4_37 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(scuba_vhi), .DO0(func_and_inet_8)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_37.initval = 16'b1000000000000000;
    ROM16X1A LUT4_36 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_8), .DO0(dec8_wre35)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_36.initval = 16'b1000000000000000;
    ROM16X1A LUT4_35 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_9)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_35.initval = 16'b1000000000000000;
    ROM16X1A LUT4_34 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_9), .DO0(dec9_wre39)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_34.initval = 16'b1000000000000000;
    ROM16X1A LUT4_33 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_10)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_33.initval = 16'b1000000000000000;
    ROM16X1A LUT4_32 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_10), .DO0(dec10_wre43)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_32.initval = 16'b1000000000000000;
    ROM16X1A LUT4_31 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_11)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_31.initval = 16'b1000000000000000;
    ROM16X1A LUT4_30 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6_inv), 
            .AD3(func_and_inet_11), .DO0(dec11_wre47)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_30.initval = 16'b1000000000000000;
    ROM16X1A LUT4_29 (.AD0(wptr_5_inv), .AD1(wptr_4_inv), .AD2(wren_i), 
            .AD3(scuba_vhi), .DO0(func_and_inet_12)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_29.initval = 16'b1000000000000000;
    ROM16X1A LUT4_28 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_12), 
            .DO0(dec12_wre51)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_28.initval = 16'b1000000000000000;
    ROM16X1A LUT4_27 (.AD0(wptr_5_inv), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_13)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_27.initval = 16'b1000000000000000;
    ROM16X1A LUT4_26 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_13), 
            .DO0(dec13_wre55)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_26.initval = 16'b1000000000000000;
    ROM16X1A LUT4_25 (.AD0(wptr_5), .AD1(wptr_4_inv), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_14)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_25.initval = 16'b1000000000000000;
    ROM16X1A LUT4_24 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_14), 
            .DO0(dec14_wre59)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_24.initval = 16'b1000000000000000;
    ROM16X1A LUT4_23 (.AD0(wptr_5), .AD1(wptr_4), .AD2(wren_i), .AD3(scuba_vhi), 
            .DO0(func_and_inet_15)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_23.initval = 16'b1000000000000000;
    ROM16X1A LUT4_22 (.AD0(scuba_vhi), .AD1(wptr_7), .AD2(wptr_6), .AD3(func_and_inet_15), 
            .DO0(dec15_wre63)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_22.initval = 16'b1000000000000000;
    ROM16X1A LUT4_21 (.AD0(w_gcount_r28), .AD1(w_gcount_r27), .AD2(w_gcount_r26), 
            .AD3(w_gcount_r25), .DO0(w_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_21.initval = 16'b0110100110010110;
    ROM16X1A LUT4_20 (.AD0(w_gcount_r24), .AD1(w_gcount_r23), .AD2(w_gcount_r22), 
            .AD3(w_gcount_r21), .DO0(w_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_20.initval = 16'b0110100110010110;
    ROM16X1A LUT4_19 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_gcount_r28), 
            .AD3(w_gcount_r27), .DO0(wcount_r7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_19.initval = 16'b0110100110010110;
    ROM16X1A LUT4_18 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(w_gcount_r27), 
            .AD3(w_gcount_r26), .DO0(wcount_r6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_18.initval = 16'b0110100110010110;
    ROM16X1A LUT4_17 (.AD0(wcount_r7), .AD1(w_gcount_r26), .AD2(w_gcount_r25), 
            .AD3(w_gcount_r24), .DO0(wcount_r4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_17.initval = 16'b0110100110010110;
    ROM16X1A LUT4_16 (.AD0(wcount_r6), .AD1(w_gcount_r25), .AD2(w_gcount_r24), 
            .AD3(w_gcount_r23), .DO0(wcount_r3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_16.initval = 16'b0110100110010110;
    ROM16X1A LUT4_15 (.AD0(w_g2b_xor_cluster_0), .AD1(w_gcount_r24), .AD2(w_gcount_r23), 
            .AD3(w_gcount_r22), .DO0(wcount_r2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_15.initval = 16'b0110100110010110;
    ROM16X1A LUT4_14 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_14.initval = 16'b0110100110010110;
    ROM16X1A LUT4_13 (.AD0(scuba_vlo), .AD1(w_gcount_r20), .AD2(w_g2b_xor_cluster_1), 
            .AD3(w_g2b_xor_cluster_0), .DO0(wcount_r0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_13.initval = 16'b0110100110010110;
    ROM16X1A LUT4_12 (.AD0(r_gcount_w28), .AD1(r_gcount_w27), .AD2(r_gcount_w26), 
            .AD3(r_gcount_w25), .DO0(r_g2b_xor_cluster_0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_12.initval = 16'b0110100110010110;
    ROM16X1A LUT4_11 (.AD0(r_gcount_w24), .AD1(r_gcount_w23), .AD2(r_gcount_w22), 
            .AD3(r_gcount_w21), .DO0(r_g2b_xor_cluster_1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_11.initval = 16'b0110100110010110;
    ROM16X1A LUT4_10 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_gcount_w28), 
            .AD3(r_gcount_w27), .DO0(rcount_w7)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_10.initval = 16'b0110100110010110;
    ROM16X1A LUT4_9 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(r_gcount_w27), 
            .AD3(r_gcount_w26), .DO0(rcount_w6)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_9.initval = 16'b0110100110010110;
    ROM16X1A LUT4_8 (.AD0(rcount_w7), .AD1(r_gcount_w26), .AD2(r_gcount_w25), 
            .AD3(r_gcount_w24), .DO0(rcount_w4)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_8.initval = 16'b0110100110010110;
    ROM16X1A LUT4_7 (.AD0(rcount_w6), .AD1(r_gcount_w25), .AD2(r_gcount_w24), 
            .AD3(r_gcount_w23), .DO0(rcount_w3)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_7.initval = 16'b0110100110010110;
    ROM16X1A LUT4_6 (.AD0(r_g2b_xor_cluster_0), .AD1(r_gcount_w24), .AD2(r_gcount_w23), 
            .AD3(r_gcount_w22), .DO0(rcount_w2)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_6.initval = 16'b0110100110010110;
    ROM16X1A LUT4_5 (.AD0(scuba_vlo), .AD1(scuba_vlo), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w1)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_5.initval = 16'b0110100110010110;
    ROM16X1A LUT4_4 (.AD0(scuba_vlo), .AD1(r_gcount_w20), .AD2(r_g2b_xor_cluster_1), 
            .AD3(r_g2b_xor_cluster_0), .DO0(rcount_w0)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_4.initval = 16'b0110100110010110;
    ROM16X1A LUT4_3 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_3.initval = 16'b0000010000010000;
    ROM16X1A LUT4_2 (.AD0(scuba_vlo), .AD1(w_gcount_r28), .AD2(rcount_8), 
            .AD3(rptr_8), .DO0(empty_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_2.initval = 16'b0001000000000100;
    ROM16X1A LUT4_1 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_set)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_1.initval = 16'b0000000101000000;
    ROM16X1A LUT4_0 (.AD0(scuba_vlo), .AD1(r_gcount_w28), .AD2(wcount_8), 
            .AD3(wptr_8), .DO0(full_cmp_clr)) /* synthesis syn_instantiated=1 */ ;
    defparam LUT4_0.initval = 16'b0100000000000001;
    FD1P3BX FF_99 (.D(iwcount_0), .SP(wren_i), .CK(WrClock_c), .PD(Reset_c), 
            .Q(wcount_0)) /* synthesis GSR="ENABLED", syn_instantiated=1 */ ;   // c:/users/victo/desktop/lattice_proj/cpld_bench_final/b13fifo.vhd(1013[12:19])
    defparam FF_99.GSR = "ENABLED";
    LUT4 i187_3_lut (.A(mdL0_6_3), .B(mdL0_7_3), .C(rptr_4), .Z(n1766)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i187_3_lut.init = 16'hcaca;
    LUT4 i188_3_lut (.A(mdL0_8_3), .B(mdL0_9_3), .C(rptr_4), .Z(n1767)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i188_3_lut.init = 16'hcaca;
    LUT4 i189_3_lut (.A(mdL0_10_3), .B(mdL0_11_3), .C(rptr_4), .Z(n1768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i189_3_lut.init = 16'hcaca;
    LUT4 i190_3_lut (.A(mdL0_12_3), .B(mdL0_13_3), .C(rptr_4), .Z(n1769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i190_3_lut.init = 16'hcaca;
    LUT4 i191_3_lut (.A(mdL0_14_3), .B(mdL0_15_3), .C(rptr_4), .Z(n1770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i191_3_lut.init = 16'hcaca;
    LUT4 i199_3_lut (.A(mdL0_0_2), .B(mdL0_1_2), .C(rptr_4), .Z(n1778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i199_3_lut.init = 16'hcaca;
    FADD2B empty_cmp_ci_a (.A0(scuba_vlo), .A1(rden_i), .B0(scuba_vlo), 
           .B1(rden_i), .CI(scuba_vlo), .COUT(cmp_ci)) /* synthesis syn_instantiated=1 */ ;
    DPR16X4C fifo_pfu_0_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec0_wre3), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_0_0), 
            .DO1(mdL0_0_1), .DO2(mdL0_0_2), .DO3(mdL0_0_3)) /* synthesis MEM_INIT_FILE="(0-15)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_0_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_0_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_1_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec1_wre7), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_1_4), 
            .DO1(mdL0_1_5), .DO2(mdL0_1_6), .DO3(mdL0_1_7)) /* synthesis MEM_INIT_FILE="(16-31)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_1_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_1_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_1_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec1_wre7), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_1_0), 
            .DO1(mdL0_1_1), .DO2(mdL0_1_2), .DO3(mdL0_1_3)) /* synthesis MEM_INIT_FILE="(16-31)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_1_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_1_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_2_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec2_wre11), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_2_4), 
            .DO1(mdL0_2_5), .DO2(mdL0_2_6), .DO3(mdL0_2_7)) /* synthesis MEM_INIT_FILE="(32-47)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_2_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_2_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_2_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec2_wre11), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_2_0), 
            .DO1(mdL0_2_1), .DO2(mdL0_2_2), .DO3(mdL0_2_3)) /* synthesis MEM_INIT_FILE="(32-47)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_2_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_2_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_3_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec3_wre15), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_3_4), 
            .DO1(mdL0_3_5), .DO2(mdL0_3_6), .DO3(mdL0_3_7)) /* synthesis MEM_INIT_FILE="(48-63)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_3_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_3_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_3_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec3_wre15), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_3_0), 
            .DO1(mdL0_3_1), .DO2(mdL0_3_2), .DO3(mdL0_3_3)) /* synthesis MEM_INIT_FILE="(48-63)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_3_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_3_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_4_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec4_wre19), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_4_4), 
            .DO1(mdL0_4_5), .DO2(mdL0_4_6), .DO3(mdL0_4_7)) /* synthesis MEM_INIT_FILE="(64-79)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_4_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_4_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_4_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec4_wre19), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_4_0), 
            .DO1(mdL0_4_1), .DO2(mdL0_4_2), .DO3(mdL0_4_3)) /* synthesis MEM_INIT_FILE="(64-79)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_4_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_4_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_5_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec5_wre23), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_5_4), 
            .DO1(mdL0_5_5), .DO2(mdL0_5_6), .DO3(mdL0_5_7)) /* synthesis MEM_INIT_FILE="(80-95)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_5_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_5_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_5_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec5_wre23), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_5_0), 
            .DO1(mdL0_5_1), .DO2(mdL0_5_2), .DO3(mdL0_5_3)) /* synthesis MEM_INIT_FILE="(80-95)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_5_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_5_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_6_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec6_wre27), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_6_4), 
            .DO1(mdL0_6_5), .DO2(mdL0_6_6), .DO3(mdL0_6_7)) /* synthesis MEM_INIT_FILE="(96-111)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_6_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_6_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_6_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec6_wre27), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_6_0), 
            .DO1(mdL0_6_1), .DO2(mdL0_6_2), .DO3(mdL0_6_3)) /* synthesis MEM_INIT_FILE="(96-111)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_6_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_6_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_7_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec7_wre31), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_7_4), 
            .DO1(mdL0_7_5), .DO2(mdL0_7_6), .DO3(mdL0_7_7)) /* synthesis MEM_INIT_FILE="(112-127)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_7_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_7_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_7_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec7_wre31), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_7_0), 
            .DO1(mdL0_7_1), .DO2(mdL0_7_2), .DO3(mdL0_7_3)) /* synthesis MEM_INIT_FILE="(112-127)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_7_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_7_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_8_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec8_wre35), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_8_4), 
            .DO1(mdL0_8_5), .DO2(mdL0_8_6), .DO3(mdL0_8_7)) /* synthesis MEM_INIT_FILE="(128-143)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_8_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_8_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_8_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec8_wre35), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_8_0), 
            .DO1(mdL0_8_1), .DO2(mdL0_8_2), .DO3(mdL0_8_3)) /* synthesis MEM_INIT_FILE="(128-143)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_8_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_8_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_9_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec9_wre39), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_9_4), 
            .DO1(mdL0_9_5), .DO2(mdL0_9_6), .DO3(mdL0_9_7)) /* synthesis MEM_INIT_FILE="(144-159)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_9_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_9_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_9_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec9_wre39), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_9_0), 
            .DO1(mdL0_9_1), .DO2(mdL0_9_2), .DO3(mdL0_9_3)) /* synthesis MEM_INIT_FILE="(144-159)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_9_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_9_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_10_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec10_wre43), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_10_4), 
            .DO1(mdL0_10_5), .DO2(mdL0_10_6), .DO3(mdL0_10_7)) /* synthesis MEM_INIT_FILE="(160-175)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_10_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_10_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_10_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec10_wre43), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_10_0), 
            .DO1(mdL0_10_1), .DO2(mdL0_10_2), .DO3(mdL0_10_3)) /* synthesis MEM_INIT_FILE="(160-175)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_10_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_10_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_11_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec11_wre47), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_11_4), 
            .DO1(mdL0_11_5), .DO2(mdL0_11_6), .DO3(mdL0_11_7)) /* synthesis MEM_INIT_FILE="(176-191)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_11_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_11_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_11_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec11_wre47), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_11_0), 
            .DO1(mdL0_11_1), .DO2(mdL0_11_2), .DO3(mdL0_11_3)) /* synthesis MEM_INIT_FILE="(176-191)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_11_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_11_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_12_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec12_wre51), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_12_4), 
            .DO1(mdL0_12_5), .DO2(mdL0_12_6), .DO3(mdL0_12_7)) /* synthesis MEM_INIT_FILE="(192-207)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_12_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_12_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_12_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec12_wre51), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_12_0), 
            .DO1(mdL0_12_1), .DO2(mdL0_12_2), .DO3(mdL0_12_3)) /* synthesis MEM_INIT_FILE="(192-207)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_12_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_12_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_13_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec13_wre55), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_13_4), 
            .DO1(mdL0_13_5), .DO2(mdL0_13_6), .DO3(mdL0_13_7)) /* synthesis MEM_INIT_FILE="(208-223)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_13_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_13_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_13_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec13_wre55), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_13_0), 
            .DO1(mdL0_13_1), .DO2(mdL0_13_2), .DO3(mdL0_13_3)) /* synthesis MEM_INIT_FILE="(208-223)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_13_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_13_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_14_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec14_wre59), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_14_4), 
            .DO1(mdL0_14_5), .DO2(mdL0_14_6), .DO3(mdL0_14_7)) /* synthesis MEM_INIT_FILE="(224-239)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_14_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_14_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_14_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec14_wre59), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_14_0), 
            .DO1(mdL0_14_1), .DO2(mdL0_14_2), .DO3(mdL0_14_3)) /* synthesis MEM_INIT_FILE="(224-239)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_14_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_14_1.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_15_0 (.DI0(Data_c_4), .DI1(Data_c_5), .DI2(Data_c_6), 
            .DI3(Data_c_7), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec15_wre63), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_15_4), 
            .DO1(mdL0_15_5), .DO2(mdL0_15_6), .DO3(mdL0_15_7)) /* synthesis MEM_INIT_FILE="(240-255)(0-3)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_15_0", syn_instantiated=1 */ ;
    defparam fifo_pfu_15_0.initval = "0x0000000000000000";
    DPR16X4C fifo_pfu_15_1 (.DI0(Data_c_0), .DI1(Data_c_1), .DI2(Data_c_2), 
            .DI3(Data_c_3), .WAD0(wptr_0), .WAD1(wptr_1), .WAD2(wptr_2), 
            .WAD3(wptr_3), .WCK(WrClock_c), .WRE(dec15_wre63), .RAD0(rptr_0), 
            .RAD1(rptr_1), .RAD2(rptr_2), .RAD3(rptr_3), .DO0(mdL0_15_0), 
            .DO1(mdL0_15_1), .DO2(mdL0_15_2), .DO3(mdL0_15_3)) /* synthesis MEM_INIT_FILE="(240-255)(4-7)", MEM_LPC_FILE="b13fifo.lpc", COMP="fifo_pfu_15_1", syn_instantiated=1 */ ;
    defparam fifo_pfu_15_1.initval = "0x0000000000000000";
    LUT4 i200_3_lut (.A(mdL0_2_2), .B(mdL0_3_2), .C(rptr_4), .Z(n1779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i200_3_lut.init = 16'hcaca;
    LUT4 i201_3_lut (.A(mdL0_4_2), .B(mdL0_5_2), .C(rptr_4), .Z(n1780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i201_3_lut.init = 16'hcaca;
    LUT4 i202_3_lut (.A(mdL0_6_2), .B(mdL0_7_2), .C(rptr_4), .Z(n1781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i202_3_lut.init = 16'hcaca;
    LUT4 i203_3_lut (.A(mdL0_8_2), .B(mdL0_9_2), .C(rptr_4), .Z(n1782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i203_3_lut.init = 16'hcaca;
    LUT4 i204_3_lut (.A(mdL0_10_2), .B(mdL0_11_2), .C(rptr_4), .Z(n1783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i204_3_lut.init = 16'hcaca;
    LUT4 i205_3_lut (.A(mdL0_12_2), .B(mdL0_13_2), .C(rptr_4), .Z(n1784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i205_3_lut.init = 16'hcaca;
    LUT4 i206_3_lut (.A(mdL0_14_2), .B(mdL0_15_2), .C(rptr_4), .Z(n1785)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i206_3_lut.init = 16'hcaca;
    MUX21 i300 (.D0(n1790), .D1(n1791), .SD(rptr_7), .Z(rdataout2));
    MUX21 i301 (.D0(n1775), .D1(n1776), .SD(rptr_7), .Z(rdataout3));
    LUT4 i214_3_lut (.A(mdL0_0_1), .B(mdL0_1_1), .C(rptr_4), .Z(n1793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i214_3_lut.init = 16'hcaca;
    LUT4 i215_3_lut (.A(mdL0_2_1), .B(mdL0_3_1), .C(rptr_4), .Z(n1794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i215_3_lut.init = 16'hcaca;
    LUT4 i216_3_lut (.A(mdL0_4_1), .B(mdL0_5_1), .C(rptr_4), .Z(n1795)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i216_3_lut.init = 16'hcaca;
    LUT4 i217_3_lut (.A(mdL0_6_1), .B(mdL0_7_1), .C(rptr_4), .Z(n1796)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i217_3_lut.init = 16'hcaca;
    LUT4 i218_3_lut (.A(mdL0_8_1), .B(mdL0_9_1), .C(rptr_4), .Z(n1797)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i218_3_lut.init = 16'hcaca;
    LUT4 i219_3_lut (.A(mdL0_10_1), .B(mdL0_11_1), .C(rptr_4), .Z(n1798)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i219_3_lut.init = 16'hcaca;
    LUT4 i220_3_lut (.A(mdL0_12_1), .B(mdL0_13_1), .C(rptr_4), .Z(n1799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i220_3_lut.init = 16'hcaca;
    LUT4 i221_3_lut (.A(mdL0_14_1), .B(mdL0_15_1), .C(rptr_4), .Z(n1800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i221_3_lut.init = 16'hcaca;
    PFUMX i225 (.BLUT(n1799), .ALUT(n1800), .C0(rptr_5), .Z(n1804));
    PFUMX i224 (.BLUT(n1797), .ALUT(n1798), .C0(rptr_5), .Z(n1803));
    PFUMX i223 (.BLUT(n1795), .ALUT(n1796), .C0(rptr_5), .Z(n1802));
    PFUMX i222 (.BLUT(n1793), .ALUT(n1794), .C0(rptr_5), .Z(n1801));
    PFUMX i210 (.BLUT(n1784), .ALUT(n1785), .C0(rptr_5), .Z(n1789));
    PFUMX i209 (.BLUT(n1782), .ALUT(n1783), .C0(rptr_5), .Z(n1788));
    PFUMX i208 (.BLUT(n1780), .ALUT(n1781), .C0(rptr_5), .Z(n1787));
    PFUMX i207 (.BLUT(n1778), .ALUT(n1779), .C0(rptr_5), .Z(n1786));
    PFUMX i195 (.BLUT(n1769), .ALUT(n1770), .C0(rptr_5), .Z(n1774));
    PFUMX i194 (.BLUT(n1767), .ALUT(n1768), .C0(rptr_5), .Z(n1773));
    PFUMX i193 (.BLUT(n1765), .ALUT(n1766), .C0(rptr_5), .Z(n1772));
    PFUMX i192 (.BLUT(n1763), .ALUT(n1764), .C0(rptr_5), .Z(n1771));
    PFUMX i180 (.BLUT(n1754), .ALUT(n1755), .C0(rptr_5), .Z(n1759));
    PFUMX i179 (.BLUT(n1752), .ALUT(n1753), .C0(rptr_5), .Z(n1758));
    PFUMX i178 (.BLUT(n1750), .ALUT(n1751), .C0(rptr_5), .Z(n1757));
    PFUMX i177 (.BLUT(n1748), .ALUT(n1749), .C0(rptr_5), .Z(n1756));
    PFUMX i165 (.BLUT(n1739), .ALUT(n1740), .C0(rptr_5), .Z(n1744));
    PFUMX i164 (.BLUT(n1737), .ALUT(n1738), .C0(rptr_5), .Z(n1743));
    PFUMX i163 (.BLUT(n1735), .ALUT(n1736), .C0(rptr_5), .Z(n1742));
    PFUMX i162 (.BLUT(n1733), .ALUT(n1734), .C0(rptr_5), .Z(n1741));
    PFUMX i150 (.BLUT(n1724), .ALUT(n1725), .C0(rptr_5), .Z(n1729));
    PFUMX i149 (.BLUT(n1722), .ALUT(n1723), .C0(rptr_5), .Z(n1728));
    PFUMX i148 (.BLUT(n1720), .ALUT(n1721), .C0(rptr_5), .Z(n1727));
    PFUMX i147 (.BLUT(n1718), .ALUT(n1719), .C0(rptr_5), .Z(n1726));
    PFUMX i135 (.BLUT(n1709), .ALUT(n1710), .C0(rptr_5), .Z(n1714));
    PFUMX i134 (.BLUT(n1707), .ALUT(n1708), .C0(rptr_5), .Z(n1713));
    PFUMX i133 (.BLUT(n1705), .ALUT(n1706), .C0(rptr_5), .Z(n1712));
    PFUMX i132 (.BLUT(n1703), .ALUT(n1704), .C0(rptr_5), .Z(n1711));
    PFUMX i237 (.BLUT(n1808), .ALUT(n1809), .C0(rptr_5), .Z(n1816));
    PFUMX i238 (.BLUT(n1810), .ALUT(n1811), .C0(rptr_5), .Z(n1817));
    PFUMX i239 (.BLUT(n1812), .ALUT(n1813), .C0(rptr_5), .Z(n1818));
    PFUMX i240 (.BLUT(n1814), .ALUT(n1815), .C0(rptr_5), .Z(n1819));
    L6MUX21 i212 (.D0(n1788), .D1(n1789), .SD(rptr_6), .Z(n1791));
    L6MUX21 i211 (.D0(n1786), .D1(n1787), .SD(rptr_6), .Z(n1790));
    L6MUX21 i197 (.D0(n1773), .D1(n1774), .SD(rptr_6), .Z(n1776));
    L6MUX21 i196 (.D0(n1771), .D1(n1772), .SD(rptr_6), .Z(n1775));
    L6MUX21 i182 (.D0(n1758), .D1(n1759), .SD(rptr_6), .Z(n1761));
    L6MUX21 i181 (.D0(n1756), .D1(n1757), .SD(rptr_6), .Z(n1760));
    L6MUX21 i167 (.D0(n1743), .D1(n1744), .SD(rptr_6), .Z(n1746));
    L6MUX21 i166 (.D0(n1741), .D1(n1742), .SD(rptr_6), .Z(n1745));
    L6MUX21 i152 (.D0(n1728), .D1(n1729), .SD(rptr_6), .Z(n1731));
    L6MUX21 i151 (.D0(n1726), .D1(n1727), .SD(rptr_6), .Z(n1730));
    L6MUX21 i137 (.D0(n1713), .D1(n1714), .SD(rptr_6), .Z(n1716));
    L6MUX21 i136 (.D0(n1711), .D1(n1712), .SD(rptr_6), .Z(n1715));
    L6MUX21 i226 (.D0(n1801), .D1(n1802), .SD(rptr_6), .Z(n1805));
    L6MUX21 i227 (.D0(n1803), .D1(n1804), .SD(rptr_6), .Z(n1806));
    L6MUX21 i241 (.D0(n1816), .D1(n1817), .SD(rptr_6), .Z(n1820));
    L6MUX21 i242 (.D0(n1818), .D1(n1819), .SD(rptr_6), .Z(n1821));
    MUX21 i302 (.D0(n1760), .D1(n1761), .SD(rptr_7), .Z(rdataout4));
    MUX21 i303 (.D0(n1745), .D1(n1746), .SD(rptr_7), .Z(rdataout5));
    MUX21 i304 (.D0(n1730), .D1(n1731), .SD(rptr_7), .Z(rdataout6));
    MUX21 i305 (.D0(n1715), .D1(n1716), .SD(rptr_7), .Z(rdataout7));
    MUX21 i306 (.D0(n1805), .D1(n1806), .SD(rptr_7), .Z(rdataout1));
    MUX21 i307 (.D0(n1820), .D1(n1821), .SD(rptr_7), .Z(rdataout0));
    PUR PUR_INST (.PUR(scuba_vhi));
    defparam PUR_INST.RST_PULSE = 1;
    TSALL TSALL_INST (.TSALL(scuba_vlo));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

