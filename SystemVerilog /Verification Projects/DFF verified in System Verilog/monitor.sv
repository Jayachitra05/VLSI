class monitor;
  transaction t;
  mailbox mail;
  virtual operation vintfob;
  
  function new(virtual operation vintfob, mailbox mail);
    this.vintfob = vintfob;
    this.mail = mail;
  endfunction
  
  task monit;
    repeat(5) begin
      t = new();
      mail.put(t);
      t.D = vintfob.D;
      #5; vintfob.Q = t.Q;
      $display("t is received from DUT");
    end
  endtask
endclass
