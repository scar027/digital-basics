`timescale 1ns / 1ps

module tb_decoder2to4_beh();
        reg [1:0] in;
        wire [3:0] out;
        decoder2to4_beh uut
        (
                .in(in),
                .out(out)
        );
        initial begin
                in = 2'b00; #100;
                in = 2'b01; #100;
                in = 2'b10; #100;
                in = 2'b11; #100;
                $stop;
        end
endmodule
