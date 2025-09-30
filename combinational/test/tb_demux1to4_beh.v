`timescale 1ns / 1ps

module tb_demux1to4_beh.v();
        reg in;
        reg [1:0] sel;
        wire [3:0] out;
        demux1to4_beh uut
        (
                .in(in),
                .sel(sel),
                .out(out)
        );
        initial begin
                in = 1'b1;
                s1 = 1'b0; s0 = 1'b0; #100;
                s1 = 1'b0; s0 = 1'b1; #100;
                s1 = 1'b1; s0 = 1'b0; #100;
                s1 = 1'b1; s0 = 1'b1; #100;
                $stop;
        end
endmodule
