module mux2to1
(
        input in0,
        input in1,
        input s0,
        output out
);
        assign out = (s0) ? in1 : in0;
endmodule
