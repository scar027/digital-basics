`timescale 1ns / 1ps

module tb_half_subtractor_beh();
        reg a, b;
        wire diff, bout;
        half_subtractor_beh uut
        (
                .a(a),
                .b(b),
                .diff(diff),
                .bout(bout)
        );
        initial begin
                a = 1'b0; b = 1'b0; #100;
                a = 1'b0; b = 1'b1; #100;
                a = 1'b1; b = 1'b0; #100;
                a = 1'b1; b = 1'b1; #100;
                $stop;
        end
endmodule
