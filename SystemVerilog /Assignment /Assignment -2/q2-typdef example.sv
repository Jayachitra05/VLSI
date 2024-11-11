/*2. Create a typdef Instr_t of struct for the instruction and then declare the memory as array of
Instr_t.*/

module typedef_example;
  typedef struct {
    int opcode;
    int operand1;
  } Instr_t;

  Instr_t memory[10];

  initial begin
    foreach (memory[i]) begin
      memory[i] = '{opcode: i, operand1: i+1};
      $display("memory[%0d] = {opcode: %0d, operand1: %0d}",
               i, memory[i].opcode, memory[i].operand1);
    end
  end
endmodule
/*output
# KERNEL: memory[0] = {opcode: 0, operand1: 1}
# KERNEL: memory[1] = {opcode: 1, operand1: 2}
# KERNEL: memory[2] = {opcode: 2, operand1: 3}
# KERNEL: memory[3] = {opcode: 3, operand1: 4}
# KERNEL: memory[4] = {opcode: 4, operand1: 5}
# KERNEL: memory[5] = {opcode: 5, operand1: 6}
# KERNEL: memory[6] = {opcode: 6, operand1: 7}
# KERNEL: memory[7] = {opcode: 7, operand1: 8}
# KERNEL: memory[8] = {opcode: 8, operand1: 9}
# KERNEL: memory[9] = {opcode: 9, operand1: 10}
# KERNEL: Simulation has finished. */
