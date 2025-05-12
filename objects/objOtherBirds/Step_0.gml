if place_meeting(x, y, objPlayer) && image_index == 0
{
	audio_play_sound(sndTweet2, 10, false);
	image_speed = 1;
	global.progress += 0.125;
}

if image_index > 2 { image_speed = 0; }