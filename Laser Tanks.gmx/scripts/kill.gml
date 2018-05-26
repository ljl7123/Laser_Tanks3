///kill(type)
type = argument0

//info arena queue stuff
if (instance_exists(collided_tank)){
    if (collided_tank.hp >= 10){
        if (instance_exists(object_room_logic)){
                if (instance_exists(owner)){
                        //name formatting
                        name1 = "";
                        if (owner.object_index == object_player){
                            name1 = global.player_name;
                            } else{
                            name1 = string(owner);
                        }
                         name2 = "";
                        if (collided_tank.object_index == object_player){
                            name2 = global.player_name;
                        } else{
                            name2 = string(collided_tank);
                        }
                   ds_list_add(object_room_logic.arena_info, name1 + " " + type + " " + name2);
                } //check if the owner exists so we can get their info
            }//end check if a logic object exists so we can enqueue to the room logic queue
         }//end check if collided tank was destroyed
}//collided tank check

