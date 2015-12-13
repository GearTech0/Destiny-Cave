//in game
if(!ingame)
{
    ingame = true;
    ingame_init();
}

if(global.hp <= 0)
{
    with(obj_player)
    {
        state = playerState.dead;
    }
}

if(keyboard_check_pressed(vk_enter))
{
    pausetext();
    state = globalStates.pause;
}
