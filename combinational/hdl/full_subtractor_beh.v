module full_subtractor_beh
(
        input a,
        input b,
        input bin,
        output reg diff,
        output reg bout
);
        always @(*) begin
                {bout, diff} = {1'b0, a} - b - bin;
        end
endmodule
