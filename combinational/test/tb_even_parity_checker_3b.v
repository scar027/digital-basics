`timescale 1ns / 1ps

module tb_even_parity_checker_3b();
        reg [2:0] in;
        reg parity;
        wire check;
        even_parity_checker uut
        (
                .in(in),
                .parity(parity),
                .check(check)
        );
        initial begin
                in = 3'b000; parity = 1'b0; #100;
                in = 3'b000; parity = 1'b1; #100;
                in = 3'b001; parity = 1'b0; #100;
                in = 3'b001; parity = 1'b1; #100;
                in = 3'b010; parity = 1'b0; #100;
                in = 3'b010; parity = 1'b1; #100;
                in = 3'b011; parity = 1'b0; #100;
                in = 3'b011; parity = 1'b1; #100;
                in = 3'b100; parity = 1'b0; #100;
                in = 3'b100; parity = 1'b1; #100;
                in = 3'b101; parity = 1'b0; #100;
                in = 3'b101; parity = 1'b1; #100;
                in = 3'b110; parity = 1'b0; #100;
                in = 3'b110; parity = 1'b1; #100;
                in = 3'b111; parity = 1'b0; #100;
                in = 3'b111; parity = 1'b1; #100;
                $stop;
        end
endmodule
