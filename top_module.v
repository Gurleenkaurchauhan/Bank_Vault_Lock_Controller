module seven_seg_full_word(
    input clk,
    input [1:0] status,
    output reg [3:0] an,
    output reg [6:0] seg
);
    reg [1:0] digit_select = 0;
    reg [3:0] char;

    always @(posedge clk) begin
        digit_select <= digit_select + 1;
    end

    always @(*) begin
        case(status)
            2'b01: begin // OPEN
                case(digit_select)
                    2'd0: char = 4'hO;
                    2'd1: char = 4'hP;
                    2'd2: char = 4'hE;
                    2'd3: char = 4'hN;
                endcase
            end
            2'b10: begin // ERR
                case(digit_select)
                    2'd0: char = 4'hE;
                    2'd1: char = 4'hR;
                    2'd2: char = 4'hR;
                    2'd3: char = 4'h_;
                endcase
            end
            2'b11: begin // LOCK
                case(digit_select)
                    2'd0: char = 4'hL;
                    2'd1: char = 4'hO;
                    2'd2: char = 4'hC;
                    2'd3: char = 4'hK;
                endcase
            end
            default: begin // LOCK
                case(digit_select)
                    2'd0: char = 4'hL;
                    2'd1: char = 4'hO;
                    2'd2: char = 4'hC;
                    2'd3: char = 4'hK;
                endcase
            end
        endcase
    end

    always @(*) begin
        case(char)
            4'hL: seg = 7'b1110001;
            4'hO: seg = 7'b1000000;
            4'hC: seg = 7'b0110001;
            4'hK: seg = 7'b1110000;
            4'hE: seg = 7'b0110000;
            4'hR: seg = 7'b1110111;
            4'hN: seg = 7'b1010100;
            4'hP: seg = 7'b0111000;
            4'h_: seg = 7'b1111111;
            default: seg = 7'b1111111;
        endcase
    end

    always @(*) begin
        an = 4'b1111;
        an[digit_select] = 1'b0;
    end
endmodule
