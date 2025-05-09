// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CreateFeathers(amt)
{
	for (var i = 0; i < amt; i++)
	{
		instance_create_layer(x + random_range(-8, 8), y + random_range(-16, 0),
			"Important", objFeather);
	}
}