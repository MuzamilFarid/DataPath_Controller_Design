module regB (
  input [14:0] B,
  input clk,
  input rst,
  input ld_b,
  input dec,
  output[14:0] out_b

);

reg [14:0] add_out;
reg eqz_r;

always @(posedge clk or negedge rst) begin
    
if(!rst)
    add_out <= 15'b0;
    else if(ld_b)
    add_out <= B;
    else if(dec)
      add_out <= add_out - 1'b1;

end

assign out_b = add_out;
assign eqz = ~|add_out; 

endmodule