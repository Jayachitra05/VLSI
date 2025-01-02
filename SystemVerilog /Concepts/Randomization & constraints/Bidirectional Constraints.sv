class packet;
  rand bit [3:0] a;
  rand bit [3:0] b;
  rand bit [3:0] c;
  constraint a_value{a==b+c;}
  constraint b_value{b>6;}
  constraint c_value{c<8;}
endclass
module bidirectional;
  initial begin
    packet pkt;
    pkt=new();
    repeat(5)begin
      pkt.randomize();
      $display("values of a=%0d,\tb=%0d,\tc=%0d",pkt.a,pkt.b,pkt.c);
    end
  end
endmodule


/* output
values of a=10,	b=8,	c=2
values of a=15,	b=10,	c=5
values of a=11,	b=8,	c=3
values of a=14,	b=10,	c=4
values of a=14,	b=10,	c=4*/
