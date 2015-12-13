var inst;
var dmg;
inst = instance_place(x, y, obj_attack);
if(inst != noone)
{   
    if(inst.object_index == obj_basichit)
        dmg = 2;
    if(inst.object_index == obj_arrow)
        dmg = 1;
        
    //knockback for enemy
    if(obj_player.d == dir.up)
        if(!place_meeting(x, y-inst.knockback, obj_wall))
            y-=inst.knockback;
        else
            while(!place_meeting(x, y-2, obj_wall))
                y-=2;
    if(obj_player.d == dir.down)
        if(!place_meeting(x, y+inst.knockback, obj_wall))
            y+=inst.knockback;
        else
            while(!place_meeting(x, y+2, obj_wall))
                y+=2;
    if(obj_player.d == dir.left)
        if(!place_meeting(x+inst.knockback, y, obj_wall))
            x+=inst.knockback;
        else
            while(!place_meeting(x+2, y, obj_wall))
                x+=2;
    if(obj_player.d == dir.right)
        if(!place_meeting(x-inst.knockback, y, obj_wall))
            x-=inst.knockback;
        else
            while(!place_meeting(x-2, y, obj_wall))
                x-=2;
    hp -= dmg;
    
    //destroy the weapon
    with(inst)
        instance_destroy();
    //make the enemy blink
    state = enemyState.hitstun;
    enemy_checkdead();
}
