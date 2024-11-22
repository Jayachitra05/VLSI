//22. Predict the output for the following exercises

class trans;
	int i;
	function new();
		i = 10;
	endfunction
endclass

class ex_trans1 extends trans; 
	int i;
    function new();
		i = 20;
	endfunction
endclass

ex_trans1 e_h;

module abc();
	initial begin
		e_h = new();
        $display("%p",e_h);
	end
endmodule

/*Output
'{[trans]:'{i:10}, i:20}*/
