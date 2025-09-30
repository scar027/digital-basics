`timescale 1ns / 1ps

module tb_rcas_4b();
        reg [3:0] a;
        reg [3:0] b;
        reg mode;
        wire [3:0] res;
        wire cout;
        rcas_4b uut
        (
                .a(a),
                .b(b),
                .mode(mode),
                .res(res),
                .cout(cout)
        );
        initial begin
                a = 4'b0000; b = 4'b0000; mode = 1'b0; #100;
                a = 4'b0100; b = 4'b1001; mode = 1'b1; #100;
                a = 4'b0011; b = 4'b1000; mode = 1'b0; #100;
                a = 4'b1001; b = 4'b0110; mode = 1'b1; #100;
                a = 4'b0111; b = 4'b0001; mode = 1'b1; #100;
                $stop;
        end
endmodule
