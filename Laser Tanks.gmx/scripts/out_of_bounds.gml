//-200 is the upper bound because of the block spawner in
//the title screen
if (x < 0 || x > room_width || y < -200 || y > room_height){
    instance_destroy();
} 
