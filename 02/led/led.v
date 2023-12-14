module BlinkingLED(
  input wire clk,  // saat sinyali
  output reg led   // led çıkışı
);

  reg [31:0] count;    //sayaç

  always @(posedge clk) begin 
    if (count == 50000000) begin // frekans ayarı
      led <= ~led; // led çıkışı
      count <= 0;  // sayaç sıfırlama
    end
    else begin
      count <= count + 1; // sayaç arttırma
    end
  end

endmodule
