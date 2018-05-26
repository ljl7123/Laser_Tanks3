///menu_element(bool draw, text_to_draw, x, y, font, font scale, bool align, color)

//parameters
draw = argument0
text_to_draw = argument1;
x_cor = argument2
y_cor = argument3;
font = argument4;
font_scale = argument5;
align = argument6;
color = argument7;

//align
if (align){
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
} else {
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}

//font stuff
draw_set_font(font);
height = string_height(text_to_draw);
width = string_width(text_to_draw);

//actual drawing
if (draw){
    draw_text_transformed_colour(x_cor, y_cor, text_to_draw, font_scale, font_scale, 0, color, color, color, color, 1);
}

//debug box
if (global.debug){
    draw_rectangle(x_cor - (.5 * width * font_scale), y_cor - (.5 * height * font_scale), x_cor + (.5 * width * font_scale), y_cor + (.5 * height * font_scale), true);
}

//determine whether or not the area containing the 
//menu element has been clicked
clicked = point_in_rectangle(mouse_x, mouse_y, x_cor - (.5 * width * font_scale), y_cor - (.5 * height * font_scale), x_cor + (.5 * width * font_scale), y_cor + (.5 * height * font_scale)) 
&& mouse_check_button_released(mb_left);

if (clicked){
    audio_play_sound(sound_menu_select, 0, 0);
}

//create a box around the element
return clicked;   
