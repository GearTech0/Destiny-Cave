draw_surface(application_surface, 0, 0);
instance_deactivate_all(true);
if(keyboard_check_pressed(vk_enter))
{
    instance_activate_all();
    state = globalStates.ingame;
}
