class packet;
  rand bit[7:0] value;
  rand enum {low,high,mid} size;
  constraint size_c{ if (size==low) value < 20;
                    else if(size == mid) { value >= 30; value <= 70; }
                    else value >90;}
endclass
module example;
  packet pkt;
  initial begin
    pkt = new();
    
    repeat(15) begin
      pkt.randomize();
      $display("size = %s, value = %0d", pkt.size.name(), pkt.value);
    end
  end
endmodule
/*output
size = high, value = 255
size = low, value = 9
size = mid, value = 37
size = mid, value = 47
size = mid, value = 57
size = low, value = 19
size = mid, value = 30
size = low, value = 5
size = mid, value = 46
size = low, value = 3
size = high, value = 95
size = high, value = 113
size = mid, value = 49
size = high, value = 167
size = high, value = 207*/
