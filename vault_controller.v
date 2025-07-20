module vault_controller(
    input clk,
    input rst,
    input [3:0] code_input,
    input submit,
    output reg [1:0] status
);
    parameter PASSCODE = 4'b1011;
    reg [1:0] attempts;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            status <= 2'b00;
            attempts <= 0;
        end else if (submit) begin
            if (attempts >= 3)
                status <= 2'b11;
            else if (code_input == PASSCODE)
                status <= 2'b01;
            else begin
                attempts <= attempts + 1;
                status <= 2'b10;
            end
        end
    end
endmodule
