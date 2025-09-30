module decoder2to4_beh
(
        input [1:0] in,
        output reg [3:0] out
);
        always @(*) begin
                out = 4'b0000;
                case(in)
                        2'b00: out[0] = 1;
                        2'b01: out[1] = 1;
                        2'b10: out[2] = 1;
                        2'b11: out[3] = 1;
                endcase
        end
endmodule
