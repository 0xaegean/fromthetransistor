module uart_tx(
  input clk,
  input rst,
  input [7:0] data_in,
  output reg tx_en,
  output reg tx_data
);

  // durum makinesi
  reg [1:0] state;

  always @(posedge clk) begin
    if (rst) begin
      state <= 0;
      tx_en <= 0;
      tx_data <= 0;
    end else begin
      case (state)
        // başlangıç bitini gönderme
        0: begin 
          tx_en <= 1;
          tx_data <= 1;
          state <= 1;
        end
        // veri bitlerini gönderme
        1: begin
          tx_data <= data_in[7 - state];
          state <= state + 1;
        end
        // bit sayısknın doğruluğunu kontrol etme
        8: begin 
          tx_en <= 0;
          state <= 0;
        end
      endcase
    end
  end

endmodule


