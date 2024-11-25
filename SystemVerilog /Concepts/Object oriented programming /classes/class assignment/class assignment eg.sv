class packet;
  bit [31:0] addr;
  bit [31:0] data;
  bit		 write;
  string	 pkt_type;
  function new();
    addr  = 32'h10;
    data  = 32'hFF;
    write = 1;
    pkt_type = "GOOD_PKT";
  endfunction
  function void display();
    $display("\t addr  = %0d",addr);
    $display("\t data  = %0h",data);
    $display("\t write = %0d",write);
    $display("\t pkt_type=%0s",pkt_type);
  endfunction
  
endclass
module class_assignment;
  packet pkt_1;
  packet pkt_2;
  initial begin
    pkt_1 = new();
    pkt_1.display();
    pkt_2 = pkt_1;
    pkt_2.display();
    pkt_2.addr = 32'hAB;
    pkt_2.pkt_type = "BAD_PKT";
    pkt_1.display();
  end 
endmodule
/*output
  addr  = 16
	 data  = ff
	 write = 1
	 pkt_type=GOOD_PKT
	 addr  = 16
	 data  = ff
	 write = 1
	 pkt_type=GOOD_PKT
	 addr  = 171
	 data  = ff
	 write = 1
	 pkt_type=BAD_PKT*/
