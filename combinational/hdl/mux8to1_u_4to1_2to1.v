module mux8to1_u_4to1_2to1
(
        input i0,
        input i1,
        input i2,
        input i3,
        input i4,
        input i5,
        input i6,
        input i7,
        input s0,
        input s1,
        input s2,
        output out
);
        wire w0, w1;
        mux4to1 mux41_0(i0, i1, i2, i3, s0, s1, w0);
        mux4to1 mux41_1(i4, i5, i6, i7, s0, s1, w1);
        mux2to1 mux21(w0, w1, s2, out);
endmodule        
