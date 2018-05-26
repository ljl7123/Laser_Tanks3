//Dirction - 180 != -direction
if (y <= 0 || y >= room_height){
    direction = -direction;
}

//For some reason, setting this to
//-direction doesn't make the tank turn, and causes it to get stuck
if (x >= room_width || x <= 0){
    direction -= 180;
}


