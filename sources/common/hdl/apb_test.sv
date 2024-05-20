module APB_TEST (
    input  logic        pclk,
    input  logic        presetn,
    input  logic        penable,
    input  logic        psel,
    input  logic [ 7:0] paddr,
    input  logic        pwrite,
    input  logic [31:0] pwdata,
    output logic [31:0] prdata,
    output logic        pready,
    output logic        pslverr,
    output logic [31:0] control,
    input  logic [31:0] status
);
  localparam [7:0] CONTROL_0 = 8'h00;
  localparam [7:0] CONTROL_1 = 8'h10;
  localparam [7:0] STATUS = 8'h20;

  logic [31:0] control_value;

  logic rd_enable;
  logic wr_enable;

  assign wr_enable = penable & pwrite & psel;
  assign rd_enable = !pwrite & psel;

  assign pready = 1'b1;
  assign pslverr = 1'b0;

  always_ff @(posedge pclk or negedge presetn) begin
    if (~presetn) begin
      prdata <= 'b0;
      control_value <= '0;
      control <= '0;
    end else begin
      if (rd_enable) begin
        prdata  <= 32'hdeadbeef;
        control <= control_value;
      end else if (wr_enable) begin
        control_value <= pwdata;
      end
    end
  end
endmodule
