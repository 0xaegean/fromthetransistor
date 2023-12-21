module uart_rx
  #(parameter CLKS_PER_BIT)
  (
    input        i_Clock,
    input        i_Rx_Serial,
    output       o_Rx_Dv
    output [7:0] o_Rx_Byte
    );

  parameter s_IDLE         = 3'b000;
  parameter s_RX_START_BIT = 3'b001;
  parameter s_RX_DATA_BITS = 3'b010;
  parameter s_RX_STOP_BIT  = 3'b011;
  parameter s_CLEANUP      = 3'b100;

  reg 
