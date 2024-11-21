class packet;
  rand bit[7:0] value;
  rand enum {low,high} size;
  constraint size_c{value==((size==high)?40:30);}
endclass
module example;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(5) begin
      pkt.randomize();
      $display("size = %s, value = %0d", pkt.size.name(), pkt.value);
    end
  end
endmodule
/*output
size = low, value = 30
size = low, value = 30
size = high, value = 40
size = high, value = 40
size = high, value = 40*/
