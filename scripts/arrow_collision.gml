if(place_meeting(x+hsp, y, obj_wall))
{
    if(!place_meeting(x+sign(hsp), y, obj_wall))
    {
        x+=sign(hsp);
    }
    instance_destroy();
}
if(place_meeting(x, y+vsp, obj_wall))
{
    if(!place_meeting(x, y+sign(vsp), obj_wall))
    {
        y+=sign(vsp);
    }
    instance_destroy();
}
if(place_meeting(x, y+hsp, obj_enemy) || place_meeting(x+vsp, y, obj_enemy))
{
    instance_destroy();
}
