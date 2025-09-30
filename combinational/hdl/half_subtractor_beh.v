module half_subtractor_beh
(
        input a,
        input b,
        output reg diff,
        output reg bout
);
        always @(*) begin
                assign diff = ~(a ^ b);
                assign bout = ~a & b;
        end
endmodule
