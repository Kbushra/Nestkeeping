global.gameStart = false;
global.progress = 0;
global.time = 3600;

flag = 0;
pos = -100;

alarm[0] = 60;
alarm[1] = -1;
alarm[2] = -1;

if audio_is_playing(sndFire) { audio_stop_sound(sndFire); }
if audio_is_playing(sndCaw) { audio_stop_sound(sndCaw); }

var current = false;
if global.task == "Migrate" || global.task == "Find a new habitat" { current = false; }
else if instance_exists(objNightFilter) && audio_is_playing(musNight) { current = true; }
else if !instance_exists(objNightFilter) && audio_is_playing(musDay) { current = true; }

if !current
{
	audio_stop_sound(global.currMusic);
	global.currMusic = -1;
}