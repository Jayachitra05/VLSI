/*Write a module that checks if a string is a palindrome (reads the same forwards and backwards). For example, check if "racecar" is a palindrome.*/
module palindrome_check();
    string input_str = "racecar";  
    bit is_palindrome;             
    integer len;                   
    initial begin
        len = 7; 
        is_palindrome = 1; 
        foreach (input_str[i]) begin
         
            if (input_str[i] != input_str[len - 1 - i]) begin
                is_palindrome = 0;  
            end
        end
        if (is_palindrome)
            $display("\"%s\" is a palindrome", input_str);
        else
            $display("\"%s\" is not a palindrome", input_str);
    end
endmodule
/*output
# KERNEL: "racecar" is a palindrome*/
