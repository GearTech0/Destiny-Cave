//check_hit(instance_obj, is_horizontal)
inst = argument0;
if(global.armour <= 0)
    global.hp -= inst.damage;
else
    global.armour -= inst.damage;
audio_play_sound(sound_hit, 10, false);
if(argument1)
{
    if(!place_meeting(x-inst.knockback * argument2, y, obj_wall))
        x -= inst.knockback * argument2;
    else
    {
        inst.x += (inst.knockback * argument2);
    }
}
else
{
    if(!place_meeting(x, y-inst.knockback * argument2, obj_wall))
        y -= inst.knockback * argument2;
    else
    {
        inst.y += (inst.knockback * argument2);
    }
}
state = playerState.hitstun;
