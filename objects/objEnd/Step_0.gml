x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

if image_index > 4 && destRoom != -1 { room_goto(destRoom); destRoom = -1; }
if image_index > 8 { instance_destroy(); }