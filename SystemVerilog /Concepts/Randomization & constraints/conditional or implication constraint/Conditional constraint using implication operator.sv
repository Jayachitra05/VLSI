class packet;
  rand bit [7:0] addr;
  string addr_range;
  
  constraint address{(addr_range == "small") -> (addr<8);}
endclass

module conditional_constran;
  initial begin
    packet pkt = new();
    pkt.addr_range = "big";
    repeat(5) begin
      pkt.randomize();
      $display("addr range = %s, addr = %0d",pkt.addr_range, pkt.addr);
    end      
    pkt.addr_range = "small";
    repeat(3) begin
      pkt.randomize();
      $display("addr range = %s, addr = %0d",pkt.addr_range, pkt.addr);
    end
  end
endmodule
/*output
addr range = big, addr = 145
addr range = big, addr = 0
addr range = big, addr = 185
addr range = big, addr = 71
addr range = big, addr = 111
addr range = small, addr = 0
addr range = small, addr = 0
addr range = small, addr = 6
addr range = big, addr = 145
*/
