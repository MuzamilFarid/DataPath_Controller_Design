module multiplication_add (

input clk,
input rst,
input [14:0] data_in,
output eqz
);

// Interface to control path
wire[14:0] bus_in;
wire ld_a;
wire ld_b;
wire ld_p;
wire dec_b;
wire clr_p;
wire out_a;
wire out_p;
wire out_b;
wire [14:0] adder_out;
wire start;

// assigning data_in to wire, not necessary though
assign bus_in = data_in;
assign start  = 1'b1; 

// Registers instantiations

regA A(

    .clk    (clk),
    .rst    (rst),
    .A      (bus_in),
    .ld_a   (ld_a),
    .out_a (out_a)
);

regP P(
    .clk (clk),
    .rst (rst),
    .P   (adder_out),
    .ld_p (ld_p),
    .out_p (out_p),
    .clr (clr_p)
);

regB B(

  .clk(clk),
  .rst (rst),
  .B (bus_in),
  .ld_b (ld_b),
  .out_b (out_b),
  .dec (dec_b)
);

 controlfsm fsm (
   .clk(clk),
   .rst(rst),
   .ld_a(ld_a),
   .start(start),
   .ld_b(ld_b),
   .ld_p(ld_p),
   .clr(clr_p),
   .dec(dec_b)
 );

 // Adder, adding A & P 

  assign adder_out =  out_a + out_p;




endmodule

