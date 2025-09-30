`timescale 1ns / 1ps

module tb_bcd_to_7_seg_beh();
        reg [3:0] bcd;
        wire [6:0] seg;
        bcd_to_7_seg_beh uut
        (
                .bcd(bcd),
                .seg(seg)
        );
        initial begin
                bcd = 4'b0000; #100;
                bcd = 4'b0001; #100;
                bcd = 4'b0010; #100;
                bcd = 4'b0011; #100;
                bcd = 4'b0100; #100;
                bcd = 4'b0101; #100;
                bcd = 4'b0110; #100;
                bcd = 4'b0111; #100;
                bcd = 4'b1000; #100;
                bcd = 4'b1001; #100;
                bcd = 4'b1010; #100;
                bcd = 4'b1011; #100;
                bcd = 4'b1100; #100;
                bcd = 4'b1101; #100;
                bcd = 4'b1110; #100;
                bcd = 4'b1111; #100;
                $stop;
        end
endmodule
