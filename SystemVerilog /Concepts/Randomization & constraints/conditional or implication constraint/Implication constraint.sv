class packet;
  rand bit [3:0] addr;
  string addr_range;
  constraint addr_range1{(addr_range =="small")->(addr<8);}
endclass
module constraint_1;
  initial begin
    packet pkt;
    pkt=new();
    $display("-----");
    repeat(4) begin
      pkt.randomize();
      $display("\addr_range=%s,addr=%0d",pkt.addr_range,pkt.addr);
    end
     $display("-----");
  end 
endmodule
/*output
addr_range=,addr=15
addr_range=,addr=3
addr_range=,addr=13
addr_range=,addr=3
*/
