module odd_parity_generator_3b
(
        input [2:0] in,
        output parity
);      
        assign parity = ~^in;
endmodule
