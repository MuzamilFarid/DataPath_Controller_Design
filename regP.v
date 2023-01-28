module regP(

 input clk,
 input rst,
 input ld_p,
 input [14:0] P,
 input clr,
 output [14:0] out_p
);

reg[14:0] add_out;
always @(posedge clk or negedge rst) begin
    
   if(!rst)
     add_out <= 15'b0;
   else if(clr)
     add_out <= 15'b0;
   else if(ld_p)
     add_out <= P;    

end

assign out_p = add_out;



endmodule