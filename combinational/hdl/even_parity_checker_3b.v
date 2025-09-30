module even_parity_checker_3b
(
        input [2:0] in,
        input parity,
        output check
);
        assign check = (in[0] ^ in[1]) ^ (in[2] ^ parity);
endmodule
