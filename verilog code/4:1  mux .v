module mux4_1Technique1(out, i0,i1,i2,i3, s0, s1);
     input i0, i1, i2, i3;
     input s0, s1;
     output out;
assign out = s1? (s0?i3:i2) : (s0?i1:i0);
endmodule 
