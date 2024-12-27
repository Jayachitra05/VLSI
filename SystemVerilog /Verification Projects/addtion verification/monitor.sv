class adder_monitor;
  adder_transaction tr;
  mailbox mail;
  virtual adder_if vif;

  function new(virtual adder_if vif, mailbox mail);
    this.vif = vif;
    this.mail = mail;
  endfunction

  task monitor;
    repeat (6) begin
      tr = new();
      mail.put(tr); 
      tr.a = vif.a;
      tr.b = vif.b;
      #10 tr.y = vif.y;
     
      $display("MONITOR : Time = %0t, t is received from DUT, y = %0d",$time,vif.y);
    end
  endtask
endclass
