`timescale 1ns / 1ps

module tb_rcs_4b();
        reg [3:0] a;
        reg [3:0] b;
        wire [3:0] diff;
        wire bout;
        rcs_4b uut
        (
                .a(a),
                .b(b),
                .cin(cin),
                .diff(diff),
                .bout(bout)
        );
        initial begin
                a = 4'b0000; b = 4'b0000; #100;
                a = 4'b1100; b = 4'b1001; #100;
                a = 4'b1011; b = 4'b1000; #100;
                a = 4'b1001; b = 4'b0110; #100;
                a = 4'b0111; b = 4'b0001; #100;
                $stop;
        end
endmodule
