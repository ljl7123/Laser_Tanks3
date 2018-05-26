//Create a tile instance only when it is 
//within the view[0], and only if there is no tile instance
//at that point. This check is costly, so only do it once every
//interval specified by allocution_time_default.
if (tile_allocution_time <=0){
    tile_allocution_time = tile_allocution_time_default;
    for (i = view_xview[0]; i < (view_xview[0] + view_wview[0]); i+=object_tile.sprite_width){ //target each row in view
        for (j = view_yview[0]; j < (view_yview[0] + view_hview[0]); j+=object_tile.sprite_height){ //target each collumn
            if (!instance_position(i,j,object_tile)){ //only create if there is currently no tile instance there
                instance_create(i,j,object_tile); //create the instance
            }
        }
    }
}

tile_allocution_time -= per_second;

//debugging to make sure the tiles are being generated
//across the appropriate space (the view)
//show_debug_message(view_wview[0]);
