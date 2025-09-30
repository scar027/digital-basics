module rcs_4b
(
        input [3:0] a,
        input [3:0] b,
        output [3:0] diff,
        output bout
);
        wire c1, c2, c3;
        full_adder fa0(a[0], ~b[0], 1'b1, diff[0], c1);
        full_adder fa1(a[1], ~b[1], c1, diff[1], c2);
        full_adder fa2(a[2], ~b[2], c2, diff[2], c3);
        full_adder fa3(a[3], ~b[3], c3, diff[3], bout);
endmodule
