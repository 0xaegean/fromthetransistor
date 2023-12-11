// iki girişli and kapısı

module AndGate(
  input wire a, b,  // iki giriş
  output reg y      // çıkış
);

  always @(*) begin
    y = a & b;      // and işlemi
  end
endmodule

