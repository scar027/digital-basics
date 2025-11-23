module d_latch_gated
(
        input c,
        input d,
        output wire q,
        output wire qbar
);
        wire sbar, rbar;
        assign sbar = ~(d & c);
        assign rbar = ~(~d & c);
        assign q = ~(sbar & qbar);
        assign qbar = ~(rbar & q);
endmodule
