class adder_driver;
  adder_transaction tr;
  mailbox mail;
  virtual adder_if vif;

  function new(virtual adder_if vif,mailbox mail);
    this.vif = vif;
    this.mail=mail;
  endfunction
  task drive;
    repeat(6)begin
      tr=new();
      mail.get(tr);
      vif.a = tr.a;
      vif.b = tr.b;
      #10 vif.y = tr.y;
      $display("DRIVER : Time = %0t, a=%0d, b=%0d",$time, tr.a, tr.b);
    end
  endtask
endclass
