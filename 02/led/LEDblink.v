module LEDblink(clk,Led);
input clk;
output LED;

reg [31:0] cnt;
always @(posedge clk) cnt <= cnt + 1;

assing LED = cnt[22];
endmodule
