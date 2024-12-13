module test ;
  reg q,d;
  initial begin
     #1 q = d;
  end
  initial begin
    d=1;
  end
    initial begin
       #1 $display("q=%b",q);
    end
  endmodule
