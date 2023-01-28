module regA (

    input clk,
    input rst,
    input[14:0] A,
    input ld_a,
    output[14:0] out_a
);

reg[14:0] add_out;

always @(posedge clk or negedge rst) begin
    
    if(!rst)
     add_out <= 15'b0;
    else if(ld_a)
     add_out <= A; 
end

out_a <= add_out;

endmodule;