module srff_neg_beh
(
        input s,
        input r,
        input clk,
        input rst,
        output reg q,
        output qbar
);
        always @(negedge clk) begin
                if (rst)
                        q <= 1'b0;
                else if (s == 1'b0 && r == 1'b0)
                        q <= q;
                else if (s == 1'b1 && r == 1'b0)
                        q <= 1'b1;
                else if (s == 1'b0 && r == 1'b1)
                        q <= 1'b0;
                else if (s == 1'b1 && r == 1'b1)
                        q <= 1'bz;
        end
        assign qbar = ~q;
endmodule
