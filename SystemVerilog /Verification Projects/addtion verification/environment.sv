`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
class adder_environment;
  virtual adder_if vif;
  mailbox mail;
  adder_generator generator;
  adder_driver driver;
  adder_monitor monitor;
  function new(virtual adder_if vif,mailbox mail);
    this.vif = vif;
    this.mail= mail;
  endfunction
  task memory;
    mail=new();
    generator = new(mail);
    driver = new(vif, mail);
    monitor = new(vif, mail);
  endtask
  task run();
    fork
      generator.generator;
      driver.drive;
      monitor.monitor;
    join
  endtask
endclass
