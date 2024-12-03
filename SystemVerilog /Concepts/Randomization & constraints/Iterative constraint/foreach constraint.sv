class packet;
  rand byte addr[];
  rand byte data[];
  
  constraint avalues{foreach(addr[i]) addr[i] inside {4,8,12,16};}
  constraint dvalues{foreach(data[j]) data[j] > 4*j;}
  constraint asize{addr.size < 4;}
  constraint dsize{data.size == addr.size;}
endclass

module tb;
  initial begin
    packet pkt = new();
    repeat(10) begin
      pkt.randomize();
      $display("addr size = %0d, data size = %0d", pkt.addr.size(), pkt.data.size());
      foreach (pkt.addr[i])
        $display("addr = %0d, data = %0d", pkt.addr[i], pkt.data[i]);
    end
  end
endmodule
/*output
addr size = 0, data size = 0
addr size = 3, data size = 3
addr = 12, data = 127
addr = 4, data = 14
addr = 16, data = 108
addr size = 3, data size = 3
addr = 12, data = 120
addr = 8, data = 80
addr = 16, data = 80
addr size = 3, data size = 3
addr = 4, data = 47
addr = 4, data = 105
addr = 8, data = 122
addr size = 3, data size = 3
addr = 8, data = 28
addr = 4, data = 21
addr = 12, data = 121
addr size = 2, data size = 2
addr = 8, data = 19
addr = 16, data = 121
addr size = 1, data size = 1
addr = 12, data = 124
addr size = 3, data size = 3
addr = 16, data = 122
addr = 16, data = 101
addr = 12, data = 85
addr size = 2, data size = 2
addr = 8, data = 68
addr = 12, data = 47
addr size = 3, data size = 3
addr = 8, data = 43
addr = 16, data = 98
addr = 8, data = 124*/
