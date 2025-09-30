module half_adder_beh
(
        input a,
        input b,
        output reg sum,
        output reg carry
);
        always @(*) begin
                assign sum = a ^ b;
                assign carry = a & b;
        end
endmodule
