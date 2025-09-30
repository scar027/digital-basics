module cla_4b
(
        input [3:0] a,
        input [3:0] b,
        input cin,
        output [3:0] sum,
        output cout
);
        wire [3:0] p;
        wire [3:0] g;
        wire c1, c2, c3;
        assign p = a ^ b;
        assign g = a & b;
        assign c1 = g[0] | (p[0] & cin);
        assign c2 = g[1] | (p[1] & c1);
        assign c3 = g[2] | (p[2] & c2);
        assign cout = g[3] | (p[3] & c3);
        assign sum[0] = p[0] ^ cin;
        assign sum[1] = p[1] ^ c1;
        assign sum[2] = p[2] ^ c2;
        assign sum[3] = p[3] ^ c3;
endmodule
