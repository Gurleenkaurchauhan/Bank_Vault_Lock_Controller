`timescale 1ns / 1ps

module top_module_tb;
    reg clk;
    reg btnC;
    reg btnU;
    reg [3:0] sw;
    wire [6:0] seg;
    wire [3:0] an;

    top_module uut (
        .clk(clk),
        .btnC(btnC),
        .btnU(btnU),
        .sw(sw),
        .seg(seg),
        .an(an)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        btnC = 1;
        btnU = 0;
        sw = 4'b0000;
        #20;

        btnC = 0;

        sw = 4'b1011;
        btnU = 1;
        #10 btnU = 0;
        #50;

        sw = 4'b1111;
        btnU = 1;
        #10 btnU = 0;
        #50;

        sw = 4'b0001;
        btnU = 1;
        #10 btnU = 0;
        #50;

        sw = 4'b0010;
        btnU = 1;
        #10 btnU = 0;
        #100;

        $finish;
    end
endmodule
