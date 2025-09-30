`timescale 1ns / 1ps

module tb_mux4to1();
        reg in0 in1, in2, in3, s0, s1;
        wire out;
        mux4to1 uut
        (
                .in0(in0),
                .in1(in1),
                .in2(in2),
                .in3(in3),
                .s0(s0),
                .s1(s1),
                .out(out)
        );
        initial begin
                in3 = 1'b0; in2 = 1'b1; in1 = 1'b0; in0 = 1'b1;
                s1 = 1'b0; s0 = 1'b0; #100;
                s1 = 1'b0; s0 = 1'b1; #100;
                s1 = 1'b1; s0 = 1'b0; #100;
                s1 = 1'b1; s0 = 1'b1; #100;
                $stop;

        end
endmodule
