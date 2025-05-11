relative_x -= 0.1;
if relative_x < 0 { relative_x = 440; }

x = relative_x + camera_get_view_x(view_camera[0]);