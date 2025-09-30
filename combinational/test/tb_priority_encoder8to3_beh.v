`timescale 1ns / 1ps

module tb_priority_encoder8to3();
        reg [7:0] in;
        wire [2:0] out;
        wire valid;
        priority_encoder8to3_beh uut
        (
                .in(in),
                .out(out),
                .valid(valid)
        );
        initial begin
                in = 8'b01010101; #100;
                in = 8'b00010101; #100;
                in = 8'b11010101; #100;
                in = 8'b00110101; #100;
                in = 8'b00000000; #100;
                $stop;
        end
endmodule
