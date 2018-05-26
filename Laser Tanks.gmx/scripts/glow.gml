///glow()

glow_value += glow_constant;

//flip the sign of the constant being added to value (making it add or subtract)
//
 if (glow_value <= 0){
           glow_constant = -glow_constant;
         } else if (glow_value >= 1){
           glow_constant = -glow_constant;
         }
