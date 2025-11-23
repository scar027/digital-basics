module sr_latch_nor
(
        input s,
        input r,
        output wire q,
        output wire qbar
);
        assign q = ~(r | qbar);
        assign qbar = ~(s | q);
endmodule
