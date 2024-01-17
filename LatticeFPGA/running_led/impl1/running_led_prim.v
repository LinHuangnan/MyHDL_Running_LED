// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.8.0.115.3
// Netlist written on Sun Jan 06 18:45:26 2019
//
// Verilog Description of module running_led
//

module running_led (clock, reset, led_driver) /* synthesis syn_module_defined=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(8[8:19])
    input clock;   // c:/xuhuitao/lattice/running_led/running_led.v(18[7:12])
    input reset;   // c:/xuhuitao/lattice/running_led/running_led.v(19[7:12])
    output [7:0]led_driver;   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    
    wire clock_c /* synthesis SET_AS_NETWORK=clock_c, is_clock=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(18[7:12])
    
    wire GND_net, VCC_net, reset_c, led_driver_c_7, led_driver_c_6, 
        led_driver_c_5, led_driver_c_4, led_driver_c_3, led_driver_c_2, 
        led_driver_c_1, led_driver_c_0, clock_led;
    wire [23:0]clock_divider0_counter;   // c:/xuhuitao/lattice/running_led/running_led.v(24[12:34])
    wire [7:0]shifting_register0_reg;   // c:/xuhuitao/lattice/running_led/running_led.v(25[11:33])
    
    wire n264, n263, n262, n261, n260, n259, n258, n257, n256, 
        n255, n254, n271, n17, n16, n15, clock_led_N_61, n22, 
        n20;
    wire [7:0]shifting_register0_reg_7__N_27;
    
    wire n227, n94, n95, n96, n97, n98, n99, n100, n101, n102, 
        n103, n104, n105, n106, n107, n108, n109, n110, n111, 
        n112, n113, n114, n115, n228, n14, clock_c_enable_8, n18;
    
    VHI i113 (.Z(VCC_net));
    LUT4 i6_4_lut (.A(clock_divider0_counter[9]), .B(clock_divider0_counter[18]), 
         .C(clock_divider0_counter[10]), .D(clock_divider0_counter[7]), 
         .Z(n16)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i6_4_lut.init = 16'h8000;
    OB led_driver_pad_7 (.I(led_driver_c_7), .O(led_driver[7]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    FD1P3AY shifting_register0_reg_i0_i0 (.D(shifting_register0_reg_7__N_27[0]), 
            .SP(clock_c_enable_8), .CK(clock_c), .Q(shifting_register0_reg[0]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i0.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    CCU2D clock_divider0_counter_46_47_add_4_23 (.A0(clock_divider0_counter[21]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n264), .S0(n94));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_23.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_23.INIT1 = 16'h0000;
    defparam clock_divider0_counter_46_47_add_4_23.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_23.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_21 (.A0(clock_divider0_counter[19]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[20]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n263), .COUT(n264), 
          .S0(n96), .S1(n95));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_21.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_21.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_21.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_21.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_19 (.A0(clock_divider0_counter[17]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[18]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n262), .COUT(n263), 
          .S0(n98), .S1(n97));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_19.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_19.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_19.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_19.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_17 (.A0(clock_divider0_counter[15]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[16]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n261), .COUT(n262), 
          .S0(n100), .S1(n99));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_17.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_17.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_17.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_17.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_15 (.A0(clock_divider0_counter[13]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[14]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n260), .COUT(n261), 
          .S0(n102), .S1(n101));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_15.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_15.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_15.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_15.INJECT1_1 = "NO";
    LUT4 shifting_register0_reg_7__I_0_25_i3_1_lut (.A(shifting_register0_reg[2]), 
         .Z(led_driver_c_2)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i3_1_lut.init = 16'h5555;
    LUT4 shifting_register0_reg_7__I_0_25_i2_1_lut (.A(shifting_register0_reg[1]), 
         .Z(led_driver_c_1)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i2_1_lut.init = 16'h5555;
    CCU2D clock_divider0_counter_46_47_add_4_13 (.A0(clock_divider0_counter[11]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[12]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n259), .COUT(n260), 
          .S0(n104), .S1(n103));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_13.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_13.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_13.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_13.INJECT1_1 = "NO";
    LUT4 shifting_register0_reg_7__I_0_25_i1_1_lut (.A(shifting_register0_reg[0]), 
         .Z(led_driver_c_0)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i1_1_lut.init = 16'h5555;
    CCU2D clock_divider0_counter_46_47_add_4_11 (.A0(clock_divider0_counter[9]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[10]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n258), .COUT(n259), 
          .S0(n106), .S1(n105));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_11.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_11.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_11.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_11.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_9 (.A0(clock_divider0_counter[7]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[8]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n257), .COUT(n258), 
          .S0(n108), .S1(n107));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_9.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_9.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_9.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_9.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_7 (.A0(clock_divider0_counter[5]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[6]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n256), .COUT(n257), 
          .S0(n110), .S1(n109));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_7.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_7.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_7.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_7.INJECT1_1 = "NO";
    LUT4 shifting_register0_reg_7__I_0_25_i8_1_lut (.A(shifting_register0_reg_7__N_27[0]), 
         .Z(led_driver_c_7)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i8_1_lut.init = 16'h5555;
    LUT4 i101_4_lut (.A(clock_divider0_counter[8]), .B(n22), .C(n18), 
         .D(clock_divider0_counter[13]), .Z(n271)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i101_4_lut.init = 16'h0001;
    CCU2D clock_divider0_counter_46_47_add_4_5 (.A0(clock_divider0_counter[3]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[4]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n255), .COUT(n256), 
          .S0(n112), .S1(n111));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_5.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_5.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_5.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_5.INJECT1_1 = "NO";
    CCU2D clock_divider0_counter_46_47_add_4_3 (.A0(clock_divider0_counter[1]), 
          .B0(GND_net), .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[2]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n254), .COUT(n255), 
          .S0(n114), .S1(n113));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_3.INIT0 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_3.INIT1 = 16'hfaaa;
    defparam clock_divider0_counter_46_47_add_4_3.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_3.INJECT1_1 = "NO";
    LUT4 shifting_register0_reg_7__I_0_25_i7_1_lut (.A(shifting_register0_reg[6]), 
         .Z(led_driver_c_6)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i7_1_lut.init = 16'h5555;
    LUT4 i102_4_lut (.A(n271), .B(n17), .C(n15), .D(n16), .Z(n227)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i102_4_lut.init = 16'h8000;
    CCU2D clock_divider0_counter_46_47_add_4_1 (.A0(GND_net), .B0(GND_net), 
          .C0(GND_net), .D0(GND_net), .A1(clock_divider0_counter[0]), 
          .B1(GND_net), .C1(GND_net), .D1(GND_net), .COUT(n254), .S1(n115));   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47_add_4_1.INIT0 = 16'hF000;
    defparam clock_divider0_counter_46_47_add_4_1.INIT1 = 16'h0555;
    defparam clock_divider0_counter_46_47_add_4_1.INJECT1_0 = "NO";
    defparam clock_divider0_counter_46_47_add_4_1.INJECT1_1 = "NO";
    LUT4 i5_2_lut (.A(clock_divider0_counter[6]), .B(clock_divider0_counter[14]), 
         .Z(n15)) /* synthesis lut_function=(A (B)) */ ;
    defparam i5_2_lut.init = 16'h8888;
    FD1S3IX clock_divider0_counter_46_47__i22 (.D(n94), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[21])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i22.GSR = "ENABLED";
    OB led_driver_pad_6 (.I(led_driver_c_6), .O(led_driver[6]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    GSR GSR_INST (.GSR(reset_c));
    FD1P3IX shifting_register0_reg_i0_i1 (.D(shifting_register0_reg[0]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[1]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i1.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i2 (.D(shifting_register0_reg[1]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[2]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i2.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i3 (.D(shifting_register0_reg[2]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[3]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i3.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i4 (.D(shifting_register0_reg[3]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[4]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i4.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i5 (.D(shifting_register0_reg[4]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[5]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i5.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i6 (.D(shifting_register0_reg[5]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg[6]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i6.GSR = "ENABLED";
    FD1P3IX shifting_register0_reg_i0_i7 (.D(shifting_register0_reg[6]), .SP(clock_c_enable_8), 
            .CD(n228), .CK(clock_c), .Q(shifting_register0_reg_7__N_27[0]));   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam shifting_register0_reg_i0_i7.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i1 (.D(n115), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i1.GSR = "ENABLED";
    FD1S3AY clock_led_21 (.D(clock_led_N_61), .CK(clock_c), .Q(clock_led));   // c:/xuhuitao/lattice/running_led/running_led.v(34[10] 40[8])
    defparam clock_led_21.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i21 (.D(n95), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[20])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i21.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i20 (.D(n96), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[19])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i20.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i19 (.D(n97), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[18])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i19.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i18 (.D(n98), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[17])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i18.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i17 (.D(n99), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[16])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i17.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i16 (.D(n100), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i16.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i15 (.D(n101), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i15.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i14 (.D(n102), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i14.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i13 (.D(n103), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i13.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i12 (.D(n104), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i12.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i11 (.D(n105), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i11.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i10 (.D(n106), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i10.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i9 (.D(n107), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i9.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i8 (.D(n108), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i8.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i7 (.D(n109), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i7.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i6 (.D(n110), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i6.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i5 (.D(n111), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i5.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i4 (.D(n112), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i4.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i3 (.D(n113), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i3.GSR = "ENABLED";
    FD1S3IX clock_divider0_counter_46_47__i2 (.D(n114), .CK(clock_c), .CD(n227), 
            .Q(clock_divider0_counter[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(35[35:63])
    defparam clock_divider0_counter_46_47__i2.GSR = "ENABLED";
    LUT4 i68_2_lut_3_lut (.A(clock_led), .B(n227), .C(shifting_register0_reg_7__N_27[0]), 
         .Z(n228)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam i68_2_lut_3_lut.init = 16'h4040;
    LUT4 i105_2_lut_rep_1 (.A(clock_led), .B(n227), .Z(clock_c_enable_8)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(48[10] 55[8])
    defparam i105_2_lut_rep_1.init = 16'h4444;
    LUT4 i1_2_lut (.A(clock_led), .B(n227), .Z(clock_led_N_61)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i7_4_lut (.A(clock_divider0_counter[16]), .B(clock_divider0_counter[15]), 
         .C(clock_divider0_counter[21]), .D(clock_divider0_counter[19]), 
         .Z(n17)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i7_4_lut.init = 16'h8000;
    LUT4 i10_4_lut (.A(clock_divider0_counter[4]), .B(n20), .C(n14), .D(clock_divider0_counter[5]), 
         .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i10_4_lut.init = 16'hfffe;
    LUT4 shifting_register0_reg_7__I_0_25_i6_1_lut (.A(shifting_register0_reg[5]), 
         .Z(led_driver_c_5)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i6_1_lut.init = 16'h5555;
    LUT4 i2_2_lut (.A(clock_divider0_counter[20]), .B(clock_divider0_counter[12]), 
         .Z(n14)) /* synthesis lut_function=(A+(B)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i2_2_lut.init = 16'heeee;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 shifting_register0_reg_7__I_0_25_i5_1_lut (.A(shifting_register0_reg[4]), 
         .Z(led_driver_c_4)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i5_1_lut.init = 16'h5555;
    LUT4 i8_4_lut (.A(clock_divider0_counter[1]), .B(clock_divider0_counter[0]), 
         .C(clock_divider0_counter[2]), .D(clock_divider0_counter[3]), .Z(n20)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i8_4_lut.init = 16'hfffe;
    TSALL TSALL_INST (.TSALL(GND_net));
    LUT4 i6_2_lut (.A(clock_divider0_counter[11]), .B(clock_divider0_counter[17]), 
         .Z(n18)) /* synthesis lut_function=(A+(B)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(36[13:48])
    defparam i6_2_lut.init = 16'heeee;
    LUT4 shifting_register0_reg_7__I_0_25_i4_1_lut (.A(shifting_register0_reg[3]), 
         .Z(led_driver_c_3)) /* synthesis lut_function=(!(A)) */ ;   // c:/xuhuitao/lattice/running_led/running_led.v(56[19:44])
    defparam shifting_register0_reg_7__I_0_25_i4_1_lut.init = 16'h5555;
    OB led_driver_pad_5 (.I(led_driver_c_5), .O(led_driver[5]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    OB led_driver_pad_4 (.I(led_driver_c_4), .O(led_driver[4]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    OB led_driver_pad_3 (.I(led_driver_c_3), .O(led_driver[3]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    OB led_driver_pad_2 (.I(led_driver_c_2), .O(led_driver[2]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    OB led_driver_pad_1 (.I(led_driver_c_1), .O(led_driver[1]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    OB led_driver_pad_0 (.I(led_driver_c_0), .O(led_driver[0]));   // c:/xuhuitao/lattice/running_led/running_led.v(20[14:24])
    IB clock_pad (.I(clock), .O(clock_c));   // c:/xuhuitao/lattice/running_led/running_led.v(18[7:12])
    IB reset_pad (.I(reset), .O(reset_c));   // c:/xuhuitao/lattice/running_led/running_led.v(19[7:12])
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module TSALL
// module not written out since it is a black-box. 
//

