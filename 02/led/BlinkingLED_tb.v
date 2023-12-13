`timescale 1ns/1ns

module BlinkingLED_tb;
  reg clk;         // Saat sinyali
  wire led;        // LED çıkışı

  // BlinkingLED modülünü çağır
  BlinkingLED uut(
    .clk(clk),
    .led(led)
  );

  // Saat sinyalini üret
  initial begin
    clk = 0;
    forever #5 clk = ~clk; // Her 5 zaman bir saat sinyalini değiştir
  end

  // Simülasyon sonuçlarını gözlemle
  always @(posedge clk) begin
    $display("LED Durumu: %b", led);
  end

endmodule

