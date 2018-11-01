	pll u0 (
		.ref_clk_clk        (<connected-to-ref_clk_clk>),        //      ref_clk.clk
		.ref_reset_reset    (<connected-to-ref_reset_reset>),    //    ref_reset.reset
		.video_in_clk_clk   (<connected-to-video_in_clk_clk>),   // video_in_clk.clk
		.vga_clk_clk        (<connected-to-vga_clk_clk>),        //      vga_clk.clk
		.lcd_clk_clk        (<connected-to-lcd_clk_clk>),        //      lcd_clk.clk
		.reset_source_reset (<connected-to-reset_source_reset>)  // reset_source.reset
	);

