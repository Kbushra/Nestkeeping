visible = objPlayer.busy || global.progress >= 1;
visible = visible && global.gameStart;
x = camera_get_view_x(view_camera[0]) + 12;
y = camera_get_view_y(view_camera[0]) + 120;