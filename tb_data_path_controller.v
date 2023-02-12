module tb ();

reg clk;
reg rst;
reg[14:0] data_in;


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

always@(posedge clk or posedge rst) begin
  if(!rst)
data_in <= 15'b0;
  else
data_in <= 15'd10;
end


// DUT

multiplication_add DUT(

     .clk(clk),
     .rst(rst),
     .data_in(data_in)
);



endmodule