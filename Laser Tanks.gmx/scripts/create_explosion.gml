///create_explosion(number of fragments, speed, deceleration, type of fragment, scale);

//params
number_of_fragments = argument0;
fragment_type = argument3;
explosion_scale = argument4;


if (hp <= 0){
        for (i = 0; i< number_of_fragments i++){
            my_fragment = instance_create(x,y,fragment_type);
            my_fragment.image_blend = image_blend;
            my_fragment.owner = self.id;
            my_fragment.owner_type = self.object_index;
            my_fragment.direction = i * (360 / number_of_fragments);
            my_fragment.image_xscale = explosion_scale;
            my_fragment.image_yscale = explosion_scale;
            my_fragment.speed = argument1 * per_second;
            my_fragment.speed_decrease_constant = argument2 * per_second;
            
            if (fragment_type.object_index == object_bullet_fragment){
                image_angle = direction;
            }
            
        }
    instance_destroy();
    audio_play_sound(sound_block_explosion, 0 , 0);
}
