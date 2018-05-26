///create_object_and_spritemask(x_pos, y_pos, surface)

//parameters 
surface = argument0;
x_pos = argument1;
y_pos = argument2;

//if our surface exists and a second has passed
if (surface_exists(surface) && time <=0){
    if (instance_exists(object_menu_text)){
        instance_destroy(object_menu_text);
    }
    //reset the second timer
    time = default_time;
    //create a sprite from the surface
    menu_sprite = sprite_create_from_surface(surface,0,0, surface_dimension, surface_dimension ,false, false, 0, 0);
    //and assign it a mask
    sprite_collision_mask(menu_sprite, true, 0, 0, 0, 0, 0, 0, 0);
    //assign that mask to an object
    object_set_sprite(object_menu_text, menu_sprite );
    //create that object
    instance_create(x_pos, y_pos, object_menu_text);
}

//decrease the time for recreating the object and putting it in the world
time -=per_second;
//decrease the time that is being drawn to the surface
surface_time -= per_second;

