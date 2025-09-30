module mag_cmp_1b
(
        input a,
        input b,
        output gt,
        output lt,
        output eq
);
        assign gt = a & ~b;
        assign lt = ~a & b;
        assign eq = ~(a ^ b);
endmodule
