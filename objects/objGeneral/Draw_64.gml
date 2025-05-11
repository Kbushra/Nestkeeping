draw_set_font(fntMain);

if os_browser != browser_not_a_browser
{
	var matrix = matrix_build(0, 0, 0, 0, 0, 0, 4, 4, 1); // uniform scale
	matrix_set(matrix_world, matrix);
}

if flag == 1
{
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	
	draw_text(160, pos, "Press SPACE to flap/awake\nHold SPACE to glide\nUse WASD/Arrows to move (only in air)");
	pos = lerp(pos, 20, 0.1);
	
	draw_set_color(c_white);
}

if flag == 2
{
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	
	draw_text_transformed(160, pos, "GO!", 2, 2, 0);
	pos = lerp(pos, 100, 0.1);
	
	draw_set_color(c_white);
}

if flag >= 3 && global.gameStart
{
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	
	draw_text(160, pos, $"The ravens are coming.\nEnd the day by completing the task\nand returning home.\nTIME LEFT: {global.time div 60}s\nTASK: {global.task}\nPROGRESS: {global.progress*100}%");
	if flag == 3 { pos = lerp(pos, 10, 0.1); }
	else { pos = lerp(pos, -32 - (os_browser == browser_not_a_browser), 0.1); }
	
	draw_set_color(c_white);
}

matrix_set(matrix_world, matrix_build_identity());