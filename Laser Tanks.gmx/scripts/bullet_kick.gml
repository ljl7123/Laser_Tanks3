///bullet_kick(displace_value)
//Need to set (or increment slowly and then have tank parent decraese) vspeed and hspeed
//in the direction opposite the bullet, or opposite the cursor/mouse_x,mouse_y
opp_angle = my_turret.image_angle + 180;
displace_value = argument0;

h_acceleration = dcos(opp_angle) *  displace_value;

//negative because y coordinate incraeses
//as it is going up
v_acceleration = -dsin(opp_angle) *  displace_value;





