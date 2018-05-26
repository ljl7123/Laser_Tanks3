speed -= speed_decrease_constant;
speed_decrease += speed_decrease_constant;

if (speed <=0){
    instance_destroy();
}


