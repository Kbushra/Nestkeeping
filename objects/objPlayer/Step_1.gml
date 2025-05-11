if global.poop && global.gameStart
{
	var poop = instance_create_layer(x, y - 10, "Important", objPoop);
	poop.depth = depth + 1;
}