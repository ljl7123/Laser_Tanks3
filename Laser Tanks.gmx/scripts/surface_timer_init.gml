///surface_timer_init(size of the surface, text to draw)

//surface variables
menu_surface = noone; 
surface_dimension = argument0; // the height and width of the surface in pixels
surface_origin = surface_dimension / 2;
font_scale = surface_dimension / 250; 

//text to be drawn
text_to_draw = argument1 

//surface_timer variables
default_surface_time = 60 * per_second * room_speed;
surface_time = default_surface_time;

//timer variables for redrawing the surface onto the room
default_time = per_second * room_speed;
time = default_time;

return menu_surface;


