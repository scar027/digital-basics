module sr_latch_nand
(
        input sbar,
        input rbar,
        output wire q,
        output wire qbar
);
        assign q = ~(sbar & qbar);
        assign qbar = ~(rbar & q);
endmodule
