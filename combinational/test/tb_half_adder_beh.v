`timescale 1ns / 1ps

module tb_half_adder_beh();
        reg a, b;
        wire sum, c_out;
        half_adder_beh uut
        (
                .a(a),
                .b(b),
                .sum(sum),
                .c_out(c_out)
        );
        initial begin
                a = 1'b0; b = 1'b0; #100;
                a = 1'b0; b = 1'b1; #100;
                a = 1'b1; b = 1'b0; #100;
                a = 1'b1; b = 1'b1; #100;
                $stop;
        end
endmodule
