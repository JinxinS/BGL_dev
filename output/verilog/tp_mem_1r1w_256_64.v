module tp_mem_1r1w_256_64
(
  input                       wclk,
  input                       we,
  input [8-1:0]      waddr,
  input [64-1:0]      data_in,
  input                       rclk,
  input                       re,
  input [8-1:0]      raddr,
  output reg [64-1:0] data_out
);
  reg [64-1:0] memory [256-1:0];
always @(posedge wclk)
    if (we == 1'b1)
       memory[waddr] <= data_in;
  always @(posedge rclk)
  begin
`ifdef SIM
    if (waddr == raddr && we == 1'b1 && re == 1'b1)
    begin
      $display("Memory collision at %0.3f us (address %8h)", $time/1000.0, waddr);
      data_out <= {64{1'bx}};
    end
    else
`endif
    if (re == 1'b1)
    begin
      data_out <= memory[raddr];
    end
  end
endmodule
