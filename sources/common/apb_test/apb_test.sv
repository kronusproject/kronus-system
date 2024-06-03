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
    output logic        irq
);
  localparam [7:0] CONTROL = 8'h10;
  localparam [7:0] STATUS  = 8'h20;

  logic [31:0] status_cdc [2];

  logic rd_enable;
  logic wr_enable;

  assign wr_enable = penable & pwrite & psel;
  assign rd_enable = !pwrite & psel;

  assign pready = 1'b1;
  assign pslverr = 1'b0;

  always_ff @(posedge pclk) begin
    if (~presetn) begin
      prdata  <= '0;
      control <= '0;
    end else begin
      unique case (paddr[7:0])
        CONTROL: begin
          if (rd_enable) begin
            prdata <= control;
          end else if (wr_enable) begin
            control <= pwdata;
          end
        end
        STATUS: begin
          if (rd_enable) begin
            prdata <= {status_cdc[1][31:1], irq};
          end
        end
        default: begin
          prdata <= '0;
        end
      endcase
    end
  end

  always_ff @(posedge pclk) begin
      status_cdc[1] <= status_cdc[0];
      status_cdc[0] <= status;
  end

  always_ff @(posedge pclk) begin
    if (!presetn) begin
      irq <= 1'b0;
    end else if (irq) begin
      irq <= ~control[31];
    end else begin
      irq <= status_cdc[1][0];
    end
  end

  wire unused = &{pstrb, 1'b0};

endmodule
