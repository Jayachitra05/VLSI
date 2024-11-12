module priority_encoder_12_4
    (
        input wire [11:0] r,
        output reg [3:0] y
    );
    always @*
        if (r[11])
            y = 4'b1100;
        else if (r[10])
            y = 4'b1011;
        else if (r[9])
            y = 4'b1010;
        else if (r[8])
            y = 4'b1001;
        else if (r[7])
            y = 4'b1000;
        else if (r[6])
            y = 4'b0111;
        else if (r[5])
            y = 4'b0110;
        else if (r[4])
            y = 4'b0101;
        else if (r[3])
            y = 4'b0100;
        else if (r[2])
            y = 4'b0011;
        else if (r[1])
            y = 4'b0010;
        else if (r[0])
            y = 4'b0001;
        else
            y = 4'b0000;
endmodule
module decoder_4_12
    (
        input wire [3:0] a,
        output reg [11:0] y
    );
    always @*
        case (a)
            4'b0000: y = 12'b000000000000;
            4'b0001: y = 12'b000000000001;
            4'b0010: y = 12'b000000000010;
            4'b0011: y = 12'b000000000100;
            4'b0100: y = 12'b000000001000;
            4'b0101: y = 12'b000000010000;
            4'b0110: y = 12'b000000100000;
            4'b0111: y = 12'b000001000000;
            4'b1000: y = 12'b000010000000;
            4'b1001: y = 12'b000100000000;
            4'b1010: y = 12'b001000000000;
            4'b1011: y = 12'b010000000000;
            4'b1100: y = 12'b100000000000;
            default: y = 12'b000000000000;
        endcase
endmodule
module top
    (
        input wire [11:0] r,
        output wire [3:0] p1,
        output wire [3:0] p2
    );
    wire [3:0] first_prio_out;
    wire [11:0] first_prio_out_decode;
    reg [11:0] second_encoder_input;
    priority_encoder_12_4 first_priority_encoder_unit 
        (.r(r), .y(first_prio_out));
    priority_encoder_12_4 second_priority_encoder_unit 
        (.r(second_encoder_input), .y(p2));
    decoder_4_12 uut (.a(first_prio_out), .y(first_prio_out_decode));
    always @*
        begin
            second_encoder_input = ~first_prio_out_decode & r;
        end
    assign p1 = first_prio_out;
endmodule
