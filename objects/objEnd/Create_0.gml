destRoom = room;
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

if audio_is_playing(musMigration) { audio_sound_gain(global.currMusic, 0, 300); }