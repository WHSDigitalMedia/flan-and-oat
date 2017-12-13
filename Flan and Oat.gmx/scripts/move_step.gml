///move_step(speed, direction, collision object)
var spd = argument0;
var dir = argument1;
var toCol = argument2;

var xtarg = x + lengthdir_x(spd, dir);
var ytarg = y + lengthdir_y(spd, dir);

if !place_meeting(xtarg, ytarg, toCol) {
    x = xtarg;
    y = ytarg;
} else {
    /*
    the player will sweep the area in front of it in 10 degree in(de)crements
    to see if there is a way to move out. i.e. if the max_angle is set to 90
    the player will slip around walls automatically
    */
    var sweep_interval = 10;
    var max_angle = 80;
    for (var angle = sweep_interval; angle <= max_angle; angle += sweep_interval) {
        for (var multiplier = -1; multiplier <= 1; multiplier += 2) {
            var angle_to_check = dir + angle * multiplier;
            xtarg = x + lengthdir_x(spd, angle_to_check);
            ytarg = y + lengthdir_y(spd, angle_to_check);
            if !place_meeting(xtarg, ytarg, toCol) {
                x = xtarg;
                y = ytarg;
                exit;
            }
        }   
    }
}
