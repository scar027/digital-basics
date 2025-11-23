module d_latch_en_beh
(
        input en,
        input d,
        output reg q,
        output qbar
);
        always @(*) begin
                if (en)
                        q = d;
                else
                        q = q;
        end
        assign qbar = ~q;
endmodule
