
module axi_test #(
    parameter int unsigned ADDR_WIDTH = 32,
    parameter int unsigned DATA_WIDTH = 32,
    parameter int unsigned STRB_WIDTH = DATA_WIDTH / 8, // derived
    parameter int unsigned PROT_WIDTH = 3, // constant
    parameter int unsigned RESP_WIDTH = 2 // constant
)(
    input logic aclk,
    input logic aresetn,

    // Write address channel
    input  logic [ADDR_WIDTH-1:0] awaddr,
    input  logic [PROT_WIDTH-1:0] awprot,
    input  logic                  awvalid,
    output logic                  awready,
    // Write data channel
    input  logic [DATA_WIDTH-1:0] wdata,
    input  logic [STRB_WIDTH-1:0] wstrb,
    input  logic                  wvalid,
    output logic                  wready,
    // Write response channel
    output logic [RESP_WIDTH-1:0] bresp,
    output logic                  bvalid,
    input  logic                  bready,
    // Read address channel
    input  logic [ADDR_WIDTH-1:0] araddr,
    input  logic [PROT_WIDTH-1:0] arprot,
    input  logic                  arvalid,
    output logic                  arready,
    // Read data channel
    output logic [DATA_WIDTH-1:0] rdata,
    output logic [RESP_WIDTH-1:0] rresp,
    output logic                  rvalid,
    input  logic                  rready,

    input  logic [DATA_WIDTH-1:0] status,
    output logic [DATA_WIDTH-1:0] control,
    output logic                  irq
);
    localparam STATUS  = 8'h00;
    localparam CONTROL = 8'h10;

    // Status CDC
    logic [DATA_WIDTH-1:0] status_cdc [2];

    always_ff @(posedge aclk) begin
        status_cdc[1] <= status_cdc[0];
        status_cdc[0] <= status;
    end

    // Write signals
    wire write = awready;

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            awready <= 1'b0;
        end else begin
            awready <= ~awready & (awvalid & wvalid) & (~bvalid | bready);
        end
    end

    assign wready = awready;

    // Write response signals
    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            bvalid <= 1'b0;
        end else if (wready) begin
            bvalid <= 1'b1;
        end else if (bready) begin
            bvalid <= 1'b0;
        end
    end

    assign bresp = '0;

    // Read signals
    wire read = arvalid & arready;

    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            rvalid <= 1'b0;
        end else if (read) begin
            rvalid <= 1'b1;
        end else if (rready) begin
            rvalid <= 1'b0;
        end
    end

    assign arready = ~rvalid;
    
    assign rresp = '0;

    // Write registers
    always_ff @(posedge aclk) begin
        if (!aresetn) begin
            control <= '0;
        end else if (write && awaddr[7:0] == CONTROL) begin
            for (int i = 0; i < STRB_WIDTH; i++) begin
                if (wstrb[i]) begin
                    control[8 * i +: 8] <= wdata[8 * i +: 8];
                end
            end
        end
    end

    // Read register
    always_ff @(posedge aclk) begin
        if (!aresetn || !read) begin
            rdata <= '0;
        end else if (!rvalid || rready) begin
            unique case (araddr[7:0])
            STATUS:  rdata <= status_cdc[1];
            CONTROL: rdata <= control;
            default: rdata <= '0;
            endcase
        end
    end

    assign irq = status_cdc[1][0];

    wire unused = &{
        awaddr[DATA_WIDTH-1:8],
        awprot,
        araddr[DATA_WIDTH-1:8],
        arprot,
        1'b0
    };
endmodule
