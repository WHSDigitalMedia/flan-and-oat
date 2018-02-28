///room_fade_transition(duration, fadein, target room)
with (instance_create(x, y, fx_fade_transition)) {
    fadeDuration = argument[0] * room_speed;
    fadeSpeed = 1/fadeDuration;
    myOrientation = argument[1];
    target = argument[2];
}
