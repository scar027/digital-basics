module tb_d_latch_gated();
        reg c, d;
        wire q, qbar;
        d_latch_gated uut
        (
                .c(c),
                .d(d),
                .q(q),
                .qbar(qbar)
        );
        initial begin
                c = 1'b1; d = 1'b0; #100;
                c = 1'b1; d = 1'b1; #100;
                c = 1'b0; d = 1'bx; #100;
                $stop;
        end
endmodule
