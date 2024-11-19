//16.) ii) Predict the output for the following exercises

class base;
	static int i;
	function static get();
		int a;
		a++;
		i++;
		$display(a);
		$display(b);
	endfunction
endclass

module test();
  initial begin
	b1_h.get();
	b1_h.get();
	b2_h.get();
  end
endmodule

/*output
WARNING VCP2374 "Declaration of class method get with static lifetime is illegal since IEEE 1800-2009." "testbench.sv" 7  25
ERROR VCP5103 "Undeclared identifier: b." "testbench.sv" 12  19
WARNING VCP2814 "Function get should return a value." "testbench.sv" 7  25
FAILURE "Compile failure 1 Errors 2 Warnings  Analysis time: 0[s]."
Exit code expected: 0, received: 255*/
