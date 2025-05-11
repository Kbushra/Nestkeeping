global.gameStart = false;
global.progress = 0;
global.time = 3600;

flag = 0;
pos = -100;
alarm[0] = 60;

audio_stop_sound(global.currMusic);
if global.task == "Migrate" { global.time = 0; }
else if instance_exists(objNightFilter) { global.currMusic = audio_play_sound(musNight, 10, true); }
else { global.currMusic = audio_play_sound(musDay, 10, true); }

audio_sound_set_track_position(global.currMusic, global.musPos);