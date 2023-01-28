module tb ();

reg clk;
reg rst;


initial begin

rst <= 1'b0;
#150;
rst <= 1'b1;
end

always begin

clk <= 1'b0;
 #50;
clk <= 1'b1;
 #50; 
end



// DUT

multiplication_add DUT(

     .clk(clk),
     .rst(rst)
);



endmodule