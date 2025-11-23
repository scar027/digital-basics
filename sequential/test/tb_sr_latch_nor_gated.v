`timescale 1ns / 1ps

module tb_sr_latch_nor_gated();
        reg c, s, r;
        wire q, qbar;
        sr_latch_nor_gated uut
        (
                .c(c),
                .s(s),
                .r(r),
                .q(q),
                .qbar(qbar)
        );
        initial begin
                c = 1'b1; s = 1'b0; r = 1'b1; #100;
                c = 1'b1; s = 1'b1; r = 1'b0; #100;
                c = 1'b1; s = 1'b0; r = 1'b0; #100;
                c = 1'b1; s = 1'b1; r = 1'b1; #100;
                c = 1'b0; s = 1'bx; r = 1'bx; #100;
                $stop;
        end
endmodule
