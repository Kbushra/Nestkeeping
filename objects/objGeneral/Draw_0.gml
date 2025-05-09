draw_set_font(fntMain);

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

if flag == 3
{
	draw_set_color(c_black);
	draw_set_halign(fa_middle);
	
	draw_text(160, pos, $"The ravens are coming.\nEnd the day by completing the task\nand returning home.\nTIME LEFT: {global.time div 60}s\nTASK: {global.task}");
	pos = lerp(pos, 10, 0.1);
	
	draw_set_color(c_white);
}