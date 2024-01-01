module uart_rx(
  input clk,
  input rst,
  input data_in,
  output reg [7.0] data_out,
  output reg rx_busy,
  output reg rx_err
);

  //veri kaydedici
  reg [7:0] data_reg;

  //durum makineisi
  reg [1:0] state;

  // hata bayrağı
  reg rx_err;
  
  always @(posedge clk) begin
    if (rst) begin 
      state <= 0;
      data_Reg <= 0;
      rx_busy <= 0;
      rx_err <= 0;
    end else begin
      case (state)
        // veri bitini bekleme
        0: begin 
          if (data_in) begin
            state <= 1;
          end
        end
        // başlangıç bitini yakalama
        1: begin 
          if (data_in) begin
            rx_err <= 1;
          end else begin 
            state <= 2;
          end
        end
        //veri bitini alma
        2: begin
          data_reg[7 - state] <= data_in;
          state <= state + 1;
        end 
        // bit sayısını kontrol etme
        8: begin 
          if (state != 8) begin
            rx_err <= 1;
          end else begin
            data_out <= data_reg;
            rx_busy <= 1;
            state <= 0;
          end
        end
      endcase
    end
  end

endmodule
