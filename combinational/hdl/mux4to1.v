module mux4to1
(
        input in0,
        input in1,
        input in2,
        input in3,
        input s0,
        input s1,
        output out
);
        assign out = (s1) ? ((s0) ? in3 : in2) : ((s0) ? in1 : in0);
endmodule
