module tb_d_latenh_en_beh();
        reg en, d;
        wire q, qbar;
        d_latenh_gated uut
        (
                .en(en),
                .d(d),
                .q(q),
                .qbar(qbar)
        );
        initial begin
                en = 1'b1; d = 1'b0; #100;
                en = 1'b1; d = 1'b1; #100;
                en = 1'b0; d = 1'bx; #100;
                $stop;
        end
endmodule
