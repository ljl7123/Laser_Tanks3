///create_surface_draw_text(surface, boolean timed, font to draw)

//paramaters
surface = argument0;
timed = argument1;
font_to_draw = argument2;

//if timed, then draws a timer instead of text onto the surface
if (timed){
   text_to_draw = string(round(surface_time));
}

//if the menu surface does not exist
if (!surface_exists(surface)){
    //create a surface the size of the port
    surface = surface_create(surface_dimension, surface_dimension);
    //and set our target to that specific surface because GameMaker is stupid
    surface_set_target(surface);
    //set the font to whatever the user passes in
    draw_set_font(font_to_draw);
    //align the text to the top left corner of the surface
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    //draw the text
    draw_text_ext_transformed(0, 0, text_to_draw, 100, surface_dimension-100, font_scale, font_scale, 0); //scale the text to get a clear image on the tiles
    //reset the surface because GameMaker is dumb.
    surface_reset_target();
    
//else if our surface does exist
} else {
    //destroy the latest surface so that we can get new numbers to draw 
    surface_free(surface);
    surface_set_target(application_surface); //these lines of code
    surface_reset_target(); //do the same thing
}

