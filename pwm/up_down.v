module up_down(input clock, input reset, output wire [7:0] out);

	// 16-bit counter
	reg [15:0] counter = 16'd0;
	
	// Direction bit: 1 = count up; 0 = count down.
	reg direction = 1;
	
	assign out[7:0] = counter[15:8];
	
	always @(posedge clock or negedge reset) begin
		if (~reset) counter <= 0;
		else begin
			if (counter == 1 && ~direction) direction <= 1;
			if (counter == 16'hfffe && direction) direction <= 0;
	
			if (direction)
				counter <= counter + 1'b1;
			else
				counter <= counter - 1'b1;
		end
	end
	
endmodule