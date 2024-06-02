module apb_test (
    input  logic        pclk,
    input  logic        presetn,
    input  logic        penable,
    input  logic        psel,
    input  logic [ 7:0] paddr,
    input  logic        pwrite,
    input  logic [ 3:0] pstrb,
    input  logic [31:0] pwdata,
    output logic [31:0] prdata,
    output logic        pready,
    output logic        pslverr,

    input  logic [31:0] status,
    output logic [31:0] control,
    output logic        interrupt
);
  localparam [7:0] CONTROL_0 = 8'h00;
  localparam [7:0] CONTROL_1 = 8'h10;
  localparam [7:0] STATUS    = 8'h20;

  logic [31:0] control_value;

  logic rd_enable;
  logic wr_enable;

  assign wr_enable = penable & pwrite & psel;
  assign rd_enable = !pwrite & psel;

  assign pready = 1'b1;
  assign pslverr = 1'b0;
  assign interrupt = 1'b0;

  always_ff @(posedge pclk or negedge presetn) begin
    if (~presetn) begin
      prdata <= 'b0;
      control_value <= '0;
      control <= '0;
    end else begin
      unique case (paddr[7:0])
        CONTROL_0: begin
          if (rd_enable) begin
            prdata <= 32'habbababa;
          end
        end
        CONTROL_1: begin
          if (rd_enable) begin
            prdata  <= control_value;
            control <= control_value;
          end else if (wr_enable) begin
            control_value <= pwdata;
          end
        end
        STATUS: begin
          if (rd_enable) begin
            prdata <= status;
          end
        end
        default: begin
          prdata <= 32'hdeaddea1;
        end
      endcase
    end
  end
endmodule
