event_inherited();//hereda gravedad de padre

///Metodo movimiento batman
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
key_jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);


//espera inputs de movimiento
var move = key_right - key_left;

horizontalSpeed= move*walkspeed;

if (place_meeting(x,y+1,obj_ground)) && (key_jump){//jump
	verticalSpeed = -6;
}

if(keyboard_check_pressed(vk_shift)){//correr
	walkspeed = 7;
}

if(keyboard_check_released(vk_shift)){
	walkspeed = 3;
}
 
//animaciones

/*if (place_meeting(x,y+1,obj_ground)){
	sprite_index = 	
}*/


//batarang
image_angle=point_direction(x,y,mouse_x,mouse_y)

firingDelay -= 1;
if (mouse_check_button(mb_left)) && (firingDelay<0){
	firingDelay = 5;
	with(instance_create_layer(x,y,"balas", obj_batarang)){
		speed=10;
		direction= other.image_angle;
		image_angle= direction;
	}
}


