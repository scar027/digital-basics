`timescale 1ns / 1ps

module tb_odd_parity_generator();
        reg [2:0] in;
        wire parity;
        odd_parity_generator uut
        (
                .in(in),
                .parity(parity)
        );
        initial begin
                in = 3'b000; #100;
                in = 3'b001; #100;
                in = 3'b010; #100;
                in = 3'b011; #100;
                in = 3'b100; #100;
                in = 3'b101; #100;
                in = 3'b110; #100;
                in = 3'b111; #100;
                $stop;
        end
endmodule
