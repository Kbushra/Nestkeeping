image_alpha += 0.04;
if dir == "U" { y = lerp(y, up, 0.1); }
if dir == "D" { y = lerp(y, down, 0.1); }

if place_meeting(x, y, objPlayer) && global.task == "Find food for your family" && global.progress < 1
{
	audio_play_sound(sndFly, 10, false);
	global.progress += 0.04;
	instance_destroy();
}