class packet;
  rand bit a;
  rand bit [3:0]b;
  constraint sab{solve a before b;}
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
   a=1,b=0
	 a=0,b=8
	 a=0,b=9
	 a=0,b=11
	 a=0,b=4
	 a=1,b=0
	 a=0,b=14
	 a=1,b=0
	 a=0,b=7
	 a=1,b=0*/
