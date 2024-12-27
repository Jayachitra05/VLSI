class adder_generator;
  adder_transaction tr;
  mailbox mail;
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  task generator;
    repeat(3)begin
    tr = new();
    tr.randomize();
    mail.put(tr);
      $display("GENERATOR : Time = %0t, a=%0d, b=%0d",$time, tr.a, tr.b);
    end
  endtask
endclass
