module multiplication_add (

input clk,
input rst,
input [14:0] data_in,
output eqz
);

wire bus_in,
wire ld_a;
wire ld_b;
wire ld_p;
wire dec_b;
wire clr_p;

bus_in <= data_in;


// Registers instantiations

regA A(

    .clk    (clk);
    .rst    (rst);
    .A      (bus_in);
    .ld_a   (ld_a);
);


endmodule

