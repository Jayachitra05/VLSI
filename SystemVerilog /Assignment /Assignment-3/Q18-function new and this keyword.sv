//18. Predict the output for the following exercises

class trans;
	int i;
	function new();
		i = 10;
	endfunction
endclass

class ex_trans1 extends trans;
	int i;
	function new(int i);
		//super.new(i);
		this.i = i;
	endfunction
endclass

ex_trans1 e_h;

module abc();
	initial begin
		e_h = new(10);
  		$display("%p",e_h);
	end
endmodule

/*Output
'{trans:'{i:10}, i:10}*/
