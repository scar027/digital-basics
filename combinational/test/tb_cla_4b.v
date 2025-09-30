`timescale 1ns / 1ps

module tb_cla_4b();
        reg [3:0] a, b;
        reg cin;
        wire [3:0] sum;
        wire cout;
        cla_4b uut
        (
                .a(a),
                .b(b),
                .cin(cin),
                .sum(sum),
                .cout(cout)
        );
        initial begin
                a = 4'b0000; b = 4'b0000; cin = 1'b0; #100;
                a = 4'b0100; b = 4'b1001; cin = 1'b1; #100;
                a = 4'b0011; b = 4'b1000; cin = 1'b0; #100;
                a = 4'b1001; b = 4'b0110; cin = 1'b1; #100;
                a = 4'b0111; b = 4'b0001; cin = 1'b1; #100;
                $stop;
        end
endmodule
