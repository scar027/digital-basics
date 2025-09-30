`timescale 1ns / 1ps

module tb_mag_cmp_1b();
        reg a;
        reg b;
        wire gt;
        wire lt;
        wire eq;
        mag_cmp_1b uut
        (
                .a(a),
                .b(b),
        );
        initial begin
                a = 1'b0; b = 1'b0; #100;
                a = 1'b0; b = 1'b1; #100;
                a = 1'b1; b = 1'b0; #100;
                a = 1'b1; b = 1'b1; #100;
        end
endmodule
