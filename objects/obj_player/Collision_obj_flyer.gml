/// @description Insert description here
// You can write your code in this editor
if( vspeed > 0 )
{
	if( y < other.y)
	{
		instance_destroy(other);
		//other.instance_destroy();
		vspeed=-2
	}
} else if ( sprite_index == spr_bubble)
{
	instance_destroy(other);

} else{
	self.instance_destroy()
}