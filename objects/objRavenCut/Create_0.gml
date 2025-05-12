for (var i = 0; i < 3; i++) { instance_create_layer(objNestFront.x - 38 + 50*i, -35, "Hazards", objRaven); }
global.gameStart = false;

alarm[0] = 40;

audio_play_sound(sndCaw, 10, false);