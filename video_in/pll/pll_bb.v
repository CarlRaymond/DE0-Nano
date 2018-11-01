
module pll (
	ref_clk_clk,
	ref_reset_reset,
	video_in_clk_clk,
	vga_clk_clk,
	lcd_clk_clk,
	reset_source_reset);	

	input		ref_clk_clk;
	input		ref_reset_reset;
	output		video_in_clk_clk;
	output		vga_clk_clk;
	output		lcd_clk_clk;
	output		reset_source_reset;
endmodule
