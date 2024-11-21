class packet;
  rand bit[7:0] value;
  rand enum {low,high} size;
  constraint size_c{ if (size==low) value < 20;
                    else value >50;}
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
size = high, value = 73
size = low, value = 9
size = high, value = 82
size = low, value = 17
size = low, value = 5*/
