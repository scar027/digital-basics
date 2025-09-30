module odd_parity_checker_3b
(
        input [2:0] in,
        input parity,
        output check
);
        assign check = ^in ^ parity;
endmodule
