module sr_latch_nor_gated
(
        input c,
        input s,
        input r,
        output wire q,
        output wire qbar
);
        wire r1, s1;
        assign r1 = r & c;
        assign s1 = s & c;
        assign q = ~(r1 | qbar);
        assign qbar = ~(s1 | q);
endmodule
