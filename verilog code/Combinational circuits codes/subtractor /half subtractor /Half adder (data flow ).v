pptmodule Half_Sub (output D, B, input x, y);
assign D = x ^ y;
assign B = ~x & y;
endmodule
