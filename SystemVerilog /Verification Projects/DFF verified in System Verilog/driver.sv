class driver;
  transaction pkt;
  mailbox mail;
  virtual operation vintf;
  
  function new(virtual operation vintf, mailbox mail);
    this.vintf = vintf;
    this.mail = mail;
  endfunction
  
  task drive;
    repeat(10) begin
      pkt = new();
      mail.get(pkt);
      vintf.D = pkt.D;
      #10; pkt.Q = vintf.Q;
    end
  endtask
endclass
