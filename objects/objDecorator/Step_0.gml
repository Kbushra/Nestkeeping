if camera_get_view_x(view_camera[0]) != prevCamPos
{
	x += (camera_get_view_x(view_camera[0]) - prevCamPos) * speedToPlayer;
	prevCamPos = camera_get_view_x(view_camera[0]);
}

if speedToPlayer == 0
{
	if layer_get_name(layer) == "FG" { speedToPlayer = -0.2; }
	if layer_get_name(layer) == "BG" { speedToPlayer = 0.1; }
}