class packet;
  rand bit a;
  rand bit [3:0]b;
  constraint a_b{(a==1)->b==0;}
endclass
module inline_constr ;
  initial begin
    packet pkt;
    pkt=new();
    repeat(10) begin
      pkt.randomize();
      $display("\t a=%0d,b=%0d",pkt.a,pkt.b);
    end
  end
endmodule
/* output
	 a=0,b=14
	 a=0,b=2
	 a=0,b=5
	 a=0,b=4
	 a=0,b=6
	 a=0,b=11
	 a=0,b=2
	 a=0,b=1
	 a=0,b=10
	 a=0,b=11*/
