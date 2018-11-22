/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//animaciones

if(!place_meeting(x,y+1,obj_ground)){
	sprite_index=obj_malo;//salto
	image_speed=0;
	//if(sign(verticalSpeed)>0) image_index=1; else image_index=0;
}

else{
	image_speed=1;
	if(horizontalSpeed==0){
		sprite_index=obj_malo;//standar
	}
	else{
		sprite_index=obj_malo;//correr
	}
}

if (place_meeting(x+horizontalSpeed,y,obj_ground))
{horizontalSpeed= -horizontalSpeed;}
