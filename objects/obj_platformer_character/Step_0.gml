//Inputs
var right_key = keyboard_check(vk_right);
var left_key = keyboard_check(vk_left);
var jump_key_pressed = keyboard_check_pressed(vk_space)
var jump_key = keyboard_check(vk_space)

//x Movement
//Direction
movedir = right_key - left_key;

//get xspeed
xspeed = movedir * movespeed;

//x collison
var _subPixel = 0.5;
if(place_meeting(x + xspeed,y,obj_wall))
{
	//Exact Position Initalize
	var _pixelCheck = _subPixel * sign(xspeed);
	while !place_meeting(x + _pixelCheck,y,obj_wall)
	{
		x += _pixelCheck;
	}
	//Collide set xspeed
	xspeed = 0;
}

//Move
x += xspeed;

//y Movement
	//Gravity
	yspeed += grav;
	
	//Falling Cap
	if(yspeed > termvel)
	{
	yspeed = termvel;	
	}
	
	//Jump
	if(jump_key_pressed && place_meeting(x,y+1,obj_wall))
	{
		yspeed = jspeed;
	}
	
	//Y collison
	var _subPixel = 0.5;
	if(place_meeting(x,y + yspeed,obj_wall))
	{
		//Exact Position Initalize
		var _pixelCheck = _subPixel * sign(yspeed);
		while !place_meeting(x,y+_pixelCheck,obj_wall)
		{
			y += _pixelCheck;
		}
		//Collide set xspeed
		yspeed = 0;
	}
	
	//Move
	y += yspeed