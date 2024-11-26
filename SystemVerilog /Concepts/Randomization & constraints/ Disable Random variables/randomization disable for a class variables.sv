class packet;
  rand byte addr;
  rand byte data;
endclass
module rand_methods;
  initial begin
    packet pkt;
    pkt =new();
    pkt.addr.rand_mode(0);
    pkt.randomize();
    $display("\taddr=%0d\t data=%0d",pkt.addr,pkt.data);
    $display("\taddr.rand_mode()=%0d\t data.rand_mode()=%0d",pkt.addr.rand_mode(),pkt.data.rand_mode());
    end
endmodule
/* output
addr=0	 data=108
addr.rand_mode()=0	 data.rand_mode()=1*/
