module fancy_pwm(input clock, input [7:0] level, output reg out, output wire negout);
	
	assign negout = ~out;
	
	// PWM counter level
	reg [7:0] counter;
	
	// Bit-reversed counter value
	wire [7:0] revcounter;
	assign revcounter = { counter[0], counter[1], counter[2], counter[3], counter[4], counter[5], counter[6], counter[7] };

	
	always @ (posedge clock)
	begin
		counter <= counter+1'b1;
		
		if (level < revcounter)
			out <= 1'b1;
		else
			out <= 1'b0;	
	end
endmodule