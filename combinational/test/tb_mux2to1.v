`timescale 1ns / 1ps

module tb_mux2to1();
        reg in0, in1, s0;
        wire out;
        mux2to1 uut
        (
                .in0(in0),
                .in1(in1),
                .s0(s0),
                .out(out)
        );
        initial begin
                in1 = 1'b1; in0 = 1'b0;
                s0 = 1'b1; #100;
                s0 = 1'b0; #100;
                $stop;
        end
endmodule
