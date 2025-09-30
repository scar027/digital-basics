`timescale 1ns / 1ps

module tb_encoder8to3();
        reg [7:0] in;
        wire [2:0] out;
        encoder8to3 uut
        (
                .in(in),
                .out(out)
        );
        initial begin
                in = 8'b10000000; #100;
                in = 8'b01000000; #100;
                in = 8'b00100000; #100;
                in = 8'b00010000; #100;
                in = 8'b00001000; #100;
                in = 8'b00000100; #100;
                in = 8'b00000010; #100;
                in = 8'b00000001; #100;
                $stop;
        end
endmodule
