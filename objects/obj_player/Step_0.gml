if(instance_place(x,y,obj_ladder)){
    if(keyboard_check(vk_up) || keyboard_check(vk_down)){
       gravity=0
       sprite_index = spr_climbing;
	   climbing=true;
        vspeed=0
       
    }
}
else if ( bubble ==false ){
    climbing=false;
    sprite_index=spr_player
}

else if ( bubble ==true ){
   climbing=false;
  sprite_index=spr_bubble
}

if(climbing){
    if(keyboard_check(vk_up)){
        vspeed=climb_speed
    }
	if(!keyboard_check(vk_up))
	{
		vspeed=0     
	}
    if(keyboard_check(vk_down)){
        vspeed=-climb_speed
    }
	
	
	
    if(instance_place( x, y + vspeed, obj_block ))
	{
		climbing=false
	}
}
else{  //if not climbing
if (keyboard_check(vk_left) and !instance_place(x-move_speed,y,obj_block)) {
    x += -move_speed
    image_xscale=-1
}

if (keyboard_check(vk_right)and !instance_place(x+move_speed,y,obj_block)) {
    x += move_speed
    image_xscale=1
}
if(instance_place(x,y+1,obj_block))
{	
if (keyboard_check_pressed(vk_up)){
    if(!instance_place(x,y-1,obj_block)){
        vspeed=j_height
        gravity=0.5
    }
    else{
        gravity=0
    }
}
}
if(instance_place(x,y+1,obj_block)){
    gravity=0
}
else
{
    gravity=0.5
}
if(keyboard_check_pressed(ord("Z"))){
	instance_create_layer(x,y,"Instances",obj_sword)
}
if(keyboard_check_pressed(ord("C")) && keyboard_check(vk_alt))
{   bubble = !bubble;
	sprite_index = spr_bubble; 
	
}

}




if(vspeed>12)vspeed=12