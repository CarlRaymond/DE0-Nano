module simple_pwm(input clock, input [7:0] level, output reg out, output negout);
	
	reg[7:0] counter;

	assign negout = ~out;
	
	always @(posedge clock)
	begin
		counter <= counter + 1'b1;
		
		if (level < counter)
			out <= 1'b1;
		else
			out <= 1'b0;
	end

endmodule