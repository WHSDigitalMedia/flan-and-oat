///round_to_nearest(num, target, direction)

var num = argument[0]; //number to be rounded
var targ = argument[1]; //number to round to (nearest 2, 5, 10, etc.)
var dir = argument[2]; //direction to round if halfway in between (0 for down, 1 for up)

num = round(num); //rounds to the nearest whole integer
var num_to_return = num;

//will return the input num as is if the target value is 0 or 1
if targ != 0 || targ != 1 || num mod targ != 0 {
    var lower_bound = num;
    var upper_bound = num;
    
    //gets the closest rounded value beneath the number
    while lower_bound mod targ > 0 {
        lower_bound--;
    }
    //gets the closest rounded value above the number
    while upper_bound mod targ > 0 {
        upper_bound++;
    }   
    
    //gets the distances
    var lower_dist = abs(num - lower_bound);
    var upper_dist = abs(num - upper_bound);
    
    //rounds the number to one of the bounds
    if lower_dist > upper_dist {
        num_to_return = lower_bound;
    } else if upper_dist > lower_dist {
        num_to_return = upper_bound;
    } else {
        if dir == 0 {
            num_to_return = lower_bound;
        } else if dir == 1 {
            num_to_return = upper_bound;
        }
    }
}

return num_to_return;
