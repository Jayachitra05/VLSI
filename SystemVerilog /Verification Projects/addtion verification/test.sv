`include"environment.sv"
class adder_test;
  mailbox mail;
  adder_environment env;
  virtual adder_if vif;
  
  function new(virtual adder_if vif,mailbox mail);
    this.vif = vif;
    this.mail = mail;
  endfunction
  task memory;
    mail=new();
    env = new(vif,mail);
  endtask
  task run();
    fork
    env.memory;
    env.run();
    join
  endtask
endclass
