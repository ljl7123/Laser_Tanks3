//may optimize to acount for the size of the sprite
//Another option may be to do a collision event and make
//a wall outside of the room.
if (x <= 0){
    x =0;
}

if (x >= room_width){
    x = room_width
}

if (y <= 0){
    y = 0;
}

if (y >= room_height){
    y = room_height;
}
