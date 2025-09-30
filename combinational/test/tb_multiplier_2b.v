`timescale 1ns / 1ps

module tb_multiplier_2b();
        reg [1:0] a, b;
        wire [3:0] p;
        multiplier_2b uut
        (
                .a(a),
                .b(b),
                .p(p)
        );
        initial begin
                a = 2'b00; b = 2'b00; #100;
                a = 2'b01; b = 2'b10; #100;
                a = 2'b10; b = 2'b11; #100;
                a = 2'b11; b = 2'b11; #100;
                $stop;
        end
endmodule
