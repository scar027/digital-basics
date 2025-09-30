module rcas_4b
(
        input [3:0] a,
        input [3:0] b,
        input mode,
        output [3:0] res,
        output cout
);
        wire c1, c2, c3;
        wire [3:0] b_mux;
        assign b_mux = b ^ {4{mode}};
        full_adder fa0(a[0], b_mux[0], mode, result[0], c1);
        full_adder fa1(a[1], b_mux[1], c1, result[1], c2);
        full_adder fa2(a[2], b_mux[2], c2, result[2], c3);
        full_adder fa3(a[3], b_mux[3], c3, result[3], cout);
endmodule
