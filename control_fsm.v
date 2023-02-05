module controlfsm(
 
 input clk,
 input rst,
 input start,
 output ld_a,
 output ld_p,
 output ld_b,
 output dec,
 output clr

);

reg[2:0] state;

parameter S0=3'b000;
parameter S1=3'b001;
parameter S2=3'b010;
parameter S3=3'b011;
parameter S4=3'b100;

always @(posedge clk or negedge rst) begin

if(!rst)
 state <= 3'b0;
else begin
case(state)

    S0: if(start)
           state<= S1;
    S1:        



end






endmodule