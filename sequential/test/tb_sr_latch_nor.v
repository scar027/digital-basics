`timescale 1ns / 1ps

module tb_sr_latch_nor();
        reg s, r;
        wire q, qbar;
        sr_latch_nor uut
        (
                .s(s),
                .r(r),
                .q(q),
                .qbar(qbar)
        );
        initial begin
                s = 1'b0; r = 1'b1; #100;
                s = 1'b1; r = 1'b0; #100;
                s = 1'b0; r = 1'b0; #100;
                s = 1'b1; r = 1'b1; #100;
                $stop;
        end
endmodule
