module controlfsm(
 
 input clk,
 input rst,
 input start,
 input eqz,
 output ld_a,
 output ld_p,
 output ld_b,
 output dec,
 output clr
);

reg[2:0] state;
reg ld_a_r;
reg ld_b_r;
reg clr_p_r;
reg ld_p_r;
reg dec_r;
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
        state <= S2;

    S2:  state <= S3;
    S3:   if(eqz)
           state <= S4;
           else 
           state <= S3;
    S4:   state <= S4;

    default: state <= S0;       

endcase
end

end

always@(state) begin

 case (state) 
     S0: begin
         ld_a_r = 1'b0;
         ld_b_r = 1'b0;
         ld_p_r = 1'b0;
         dec_r  = 1'b0;
         clr_p_r  = 1'b0;
     end 
     S1:  ld_a_r = 1'b1; 
    
     S2:  begin 
        
               ld_a_r = 1'b0;
                ld_b_r = 1'b1;
                clr_p_r = 1'b1;
     end
     S3: begin
              ld_p_r = 1'b1;
              clr_p_r = 1'b0;
              ld_b_r  = 1'b0;
              dec_r    = 1'b1;
     end
       S4: begin 
       ld_p_r = 1'b0;
       dec_r  = 1'b0;
       end       
     
  default : ld_a_r = 1'b0;
 endcase



end

assign ld_a = ld_a_r;
assign ld_b = ld_b_r;
assign ld_p = ld_p_r;
assign clr  = clr_p_r;
assign dec  = dec_r;

// assign dec signal in fsm



endmodule