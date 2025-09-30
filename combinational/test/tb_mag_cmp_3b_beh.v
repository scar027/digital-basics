`timescale 1ns / 1ps

module tb_mag_cmp_3b_beh();
        reg [2:0] a, b;
        wire gt, lt, eq;
        mag_cmp_3b_beh uut
        (
                .a(a),
                .b(b),
                .gt(gt),
                .lt(lt),
                .eq(eq)
        );
        initial begin
                a = 3'b000; b = 3'b000; #100;
                a = 3'b001; b = 3'b010; #100;
                a = 3'b011; b = 3'b001; #100;
                a = 3'b101; b = 3'b010; #100;
                a = 3'b111; b = 3'b101; #100;
                $stop;
        end
endmodule
