global.musPos = audio_sound_get_track_position(global.currMusic);

if !global.gameStart { exit; }

camRelativeX += objPlayer.xMovement * 0.4;
camRelativeX = clamp(camRelativeX, -80, 80);
camRelativeX = lerp(camRelativeX, 0, 0.02);

var newCamX = clamp(objPlayer.x - 160 + camRelativeX, 0, room_width - 320);
camera_set_view_pos(view_camera[0], lerp(camera_get_view_x(view_camera[0]), newCamX, 0.1), 0);