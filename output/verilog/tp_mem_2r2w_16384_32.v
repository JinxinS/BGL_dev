module tp_mem_2r2w_16384_32
(
  input                       clk_a,
  input                       wen_a,
  input [14-1:0]      addr_a,
  input [32-1:0]      data_in_a,
  output reg [32-1:0] data_out_a,
  input                       clk_b,
  input                       wen_b,
  input [14-1:0]      addr_b,
  input [32-1:0]      data_in_b,
  output reg [32-1:0] data_out_b
);
  reg [32-1:0] memory [16384-1:0];
always @(posedge clk_a)
  begin
    if (wen_a)
    begin
      memory[addr_a] <= data_in_a;
      data_out_a     <= data_in_a;
    end
    else
    begin
      data_out_a     <= memory[addr_a];
    end
  end

  always @(posedge clk_b)
  begin
    if (wen_b)
    begin
      memory[addr_b] <= data_in_b;
      data_out_b     <= data_in_b;
    end
    else
    begin
      data_out_b     <= memory[addr_b];
    end
  end
endmodule
