`timescale 1ns / 1ps

module tb_full_subtractor_beh();
        reg a, b, bin;
        wire diff, bout;
        full_subtractor_beh uut
        (
                .a(a),
                .b(b),
                .bin(bin),
                .diff(diff),
                .bout(bout)
        );
        initial begin
                a = 1'b0; b = 1'b0; bin = 1'b0; #100;
                a = 1'b0; b = 1'b0; bin = 1'b1; #100;
                a = 1'b0; b = 1'b1; bin = 1'b0; #100;
                a = 1'b0; b = 1'b1; bin = 1'b1; #100;
                a = 1'b1; b = 1'b0; bin = 1'b0; #100;
                a = 1'b1; b = 1'b0; bin = 1'b1; #100;
                a = 1'b1; b = 1'b1; bin = 1'b0; #100;
                a = 1'b1; b = 1'b1; bin = 1'b1; #100;
                $stop;
        end
endmodule
