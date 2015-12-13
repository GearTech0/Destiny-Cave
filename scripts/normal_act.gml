normal_getKeys();

//if paused

//attack
if(keyaction)
    state = playerState.attack;
    
//Change Attack Type
if(keyitem[0])
{
    global.activeitem = 0;
    itemtype = obj_basichit;
}
if(keyitem[1])
{
    global.activeitem = 1;
    itemtype = obj_arrow;
}
if(keyitem[2])
{
    global.activeitem = 2;
}
if(keyitem[3])
{
    global.activeitem = 3;
}

collisionandmovement();
