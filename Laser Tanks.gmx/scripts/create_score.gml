///create_score(value, x, y)

//params
value = argument0;

//create the score object and change its 
//properties based on what object called it
my_score = instance_create(x,y,object_score);

//add it to the score
if (instance_exists(owner)){
    if (owner.object_index == object_player){
        object_room_logic.time_attack_score += value;
    }
}

//change the properties of the created score object
my_score.value = value;
my_score.x = argument1;
my_score.y = argument2 - 75; //create the score slightly above the object
my_score.image_blend = image_blend;



