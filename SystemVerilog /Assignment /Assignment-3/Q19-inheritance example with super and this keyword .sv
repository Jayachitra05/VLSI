//19. Predict the output for the following exercises

class trans;
	int i;
	function new(inti);
		this.i = i;
	endfunction
endclass

class ex_trans1 extends trans;
	int i;
	function new(int i);
		super.new(i);
		this.i = 20;
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
 '{[trans]:'{i:0}, i:20}*/
