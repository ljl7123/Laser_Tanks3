///crt_cust_txt(font, align, color);
font = argument0;
align = argument1;
color = argument2;

draw_set_font(font);
if(align == 0){
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}
else if (align == 1){
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
}
draw_set_color(color);

