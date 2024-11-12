module BCD_incrementor(
    input [11:0] bcd_in,
    output reg [11:0] bcd_out
);
  reg [3:0] hundreds, tens,ones;

    always @(*) begin
        hundreds = bcd_in[11:8];
        tens = bcd_in[7:4];
        ones = bcd_in[3:0];
      if (ones == 4'd9) begin
            ones = 4'd0;
            if (tens == 4'd9) begin
                tens = 4'd0;
                if (hundreds == 4'd9)
                    hundreds = 4'd0;
                else
                    hundreds = hundreds + 1;
            end else
                tens = tens + 1;
        end else
            ones = ones + 1;
      bcd_out = {hundreds, tens, ones};
    end
endmodule
