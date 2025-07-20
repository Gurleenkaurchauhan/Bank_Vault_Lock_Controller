module top_module(
    input clk,
    input btnC,
    input btnU,
    input [3:0] sw,
    output [6:0] seg,
    output [3:0] an
);
    wire [1:0] status;

    vault_controller vc(
        .clk(clk),
        .rst(btnC),
        .code_input(sw),
        .submit(btnU),
        .status(status)
    );

    seven_seg_full_word ssd(
        .clk(clk),
        .status(status),
        .seg(seg),
        .an(an)
    );
endmodule
