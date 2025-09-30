`timescale 1ns / 1ps

module tb_mux4to1_beh();
        reg [3:0] in;
        reg [1:0] sel;
        wire out;
        mux4to1_beh uut
        (
                .in(in),
                .sel(sel),
                .out(out)
        );
        initial begin
                in = 4'b1010;
                sel = 2'b00; #100;
                sel = 2'b01; #100;
                sel = 2'b10; #100;
                sel = 2'b11; #100;
                $stop;
        end
endmodule
