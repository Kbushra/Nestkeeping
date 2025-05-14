image_alpha += 0.04;
if dir == "U" { y = lerp(y, up, 0.1); }
if dir == "D" { y = lerp(y, down, 0.1); }

if place_meeting(x, y, objPlayer) && global.task == "Find food for your family" && global.progress < 1
{
	audio_play_sound(sndFly, 10, false);
	global.progress += 0.05;
	instance_destroy();
}

if point_in_rectangle(x, y, view_xport[0], view_yport[0], view_xport[0] + view_wport[0],
	view_yport[0] + view_hport[0]) { timer = 180; }