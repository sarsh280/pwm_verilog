
module pwm(input clk, 
output [3:0]pwm_out);

reg [7:0] counter = 0;

always@(posedge clk) begin
	if(counter < 100) counter <= counter + 1;
	else counter <= 0;
end

// 20% duty cyle
assign pwm_out[0] = (counter < 20) ? 1:0;
	
// 40% duty cyle
assign pwm_out[1] = (counter < 40) ? 1:0;

// 60% duty cyle
assign pwm_out[2] = (counter < 60) ? 1:0;

// 80% duty cyle
assign pwm_out[3] = (counter < 80) ? 1:0;


endmodule
