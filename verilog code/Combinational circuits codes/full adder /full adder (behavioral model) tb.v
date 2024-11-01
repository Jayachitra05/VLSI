module tb_full_adder;
    reg a, b, cin;
    wire sum, cout;
    full_adder fa (.a(a),.b(b), .cin(cin), .sum(sum),.cout(cout));
    initial begin
        $monitor("%b %b  %b  |  %b   %b", a, b, cin, sum, cout);
        {a, b, cin} = 3'b000; #10;
        {a, b, cin} = 3'b001; #10;
        {a, b, cin} = 3'b010; #10;
        {a, b, cin} = 3'b011; #10;
        {a, b, cin} = 3'b100; #10;
        {a, b, cin} = 3'b101; #10;
        {a, b, cin} = 3'b110; #10;
        {a, b, cin} = 3'b111; #10;
        $finish;
    end
endmodule
