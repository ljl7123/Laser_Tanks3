///draw_and_wrap_arrow(x start of arrow, x end of arrow, y coordinate to draw arrow)

//parameters
x_start = argument0;
x_end = argument1;
y_coordinate = argument2;

//draw the arrow
draw_arrow(x_start, y_coordinate, x_end, y_coordinate, 75);

//draw the bounding rectangle around the arrow
//height of rectangle is arbitrarily specified
//can't have a rectangle where the left side is greater than right side

//forward arrow
forward_click = point_in_rectangle(mouse_x, mouse_y, x_start, y_coordinate -50, x_end, y_coordinate + 50)  && mouse_check_button_released(mb_left);
//backward arrow
backward_click =point_in_rectangle(mouse_x, mouse_y, x_end, y_coordinate -50, x_start, y_coordinate + 50)  && mouse_check_button_released(mb_left);

//play sound if clicked
if (forward_click || backward_click){
    audio_play_sound(sound_arrow, 0, 0);
}

//return 
if (x_start < x_end){
    return forward_click;
} else {
    return backward_click;
}
