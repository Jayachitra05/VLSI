class packet;
  rand bit [3:0] addr_1;
  rand bit [3:0] addr_2;
  
  constraint addr_range_1{addr_1 dist {2:=5,[10:12]:=8};}
  constraint addr_range_2{addr_2 dist {2:/5,[10:12]:/8};}
endclass
module constr_dist;
  initial begin
    packet pkt;
    pkt=new();
    $display("----");
    repeat(10) begin
      pkt.randomize();
      $display("\taddr_1=%0d",pkt.addr_1);
    end
        $display("----");
     repeat(10) begin
      pkt.randomize();
       $display("\taddr_2=%0d",pkt.addr_2);
    end
        $display("----");
  end
endmodule
/* output
addr_1=12
	addr_1=12
	addr_1=10
	addr_1=12
	addr_1=12
	addr_1=11
	addr_1=12
	addr_1=10
	addr_1=10
	addr_1=12
----
	addr_2=2
	addr_2=2
	addr_2=12
	addr_2=12
	addr_2=2
	addr_2=12
	addr_2=2
	addr_2=2
	addr_2=11
	addr_2=2*/
