module adder(

input[14:0] out_a,
input[14:0] out_p,
output reg[14:0] out

);


always@(*) begin

out = out_a + out_p;

end




endmodule