`timescale 1ns / 1ps

module tb_mux8to1_u_4to1_2to1();
        reg in0, in1, in2, in3, in4, in5, in6, in7, s0, s1, s2;
        wire out;
        mux8to1_u_4to1_2to1 uut
        (
                .in0(in0),
                .in1(in1),
                .in2(in2),
                .in3(in3),
                .in4(in4),
                .in5(in5),
                .in6(in6),
                .in7(in7),
                .s0(s0),
                .s1(s1),
                .s2(s2),
                .out(out)
        );
        initial begin
                in7 = 1'b0; in6 = 1'b1; in5 = 1'b0; in4 = 1'b1;
                in3 = 1'b0; in2 = 1'b1; in1 = 1'b0; in0 = 1'b1;
                s2 = 1'b0; s1 = 1'b0; s0 = 1'b0; #100;
                s2 = 1'b0; s1 = 1'b0; s0 = 1'b1; #100;
                s2 = 1'b0; s1 = 1'b1; s0 = 1'b0; #100;
                s2 = 1'b0; s1 = 1'b1; s0 = 1'b1; #100;
                s2 = 1'b1; s1 = 1'b0; s0 = 1'b0; #100;
                s2 = 1'b1; s1 = 1'b0; s0 = 1'b1; #100;
                s2 = 1'b1; s1 = 1'b1; s0 = 1'b0; #100;
                s2 = 1'b1; s1 = 1'b1; s0 = 1'b1; #100;
                $stop;
        end
endmodule
