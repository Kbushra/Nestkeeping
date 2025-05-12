audio_play_sound(sndSplat, 10, false);

if global.progress < 1 { global.progress += 0.04; }

image_index = 1;
dir = "D";
alarm[0] = 30;

instance_destroy(other);