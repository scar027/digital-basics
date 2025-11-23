`timescale 1ns / 1ps

module tb_sr_latch_nand();
        reg sbar, rbar;
        wire q, qbar;
        sr_latch_nand uut
        (
                .sbar(sbar),
                .rbar(rbar),
                .q(q),
                .qbar(qbar)
        );
        initial begin
                sbar = 1'b1; rbar = 1'b0; #100;
                sbar = 1'b0; rbar = 1'b1; #100;
                sbar = 1'b1; rbar = 1'b1; #100;
                sbar = 1'b0; rbar = 1'b0; #100;
                $stop;
        end
endmodule
