module task_example_nonblocking;
reg [7:0] a, b;
reg [7:0] sum;
task calculate_sum;
input [7:0] x, y;
output [7:0] total;
begin
total = x + y;
end
endtask
initial begin
a = 5;
b = 10;
calculate_sum(a, b, sum);
  $display("Sum: %d", sum);
end
endmodule
