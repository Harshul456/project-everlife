function scr_player_movement() {
    // --- Input
    var key_up    = keyboard_check(ord("W"));
    var key_down  = keyboard_check(ord("S"));
    var key_right = keyboard_check(ord("D"));
    var key_left  = keyboard_check(ord("A"));

    // --- Intent & facing
    var hx = 0, vy = 0;
    if (key_right && !key_left) { hx =  1; h_last =  1; }
    else if (key_left && !key_right) { hx = -1; h_last = -1; }
    if (key_down)  vy += 1;
    if (key_up)    vy -= 1;

    // --- Velocity
    if (hx != 0 || vy != 0) {
        var len = sqrt(hx*hx + vy*vy);
        hsp = (hx / len) * move_speed;
        vsp = (vy / len) * move_speed;

        move_swept(hsp, vsp);
        sprite_index = spr_gideon_run_with_sword;
        image_speed  = 1;
    } else {
        hsp = 0; vsp = 0;
        sprite_index = spr_player;
        image_speed  = 1;
    }

    // --- Apply visual scale ONCE per frame (keeps proportions)
    image_xscale = h_last * scale_visual; // e.g., ±0.6
    image_yscale = scale_visual;          // 0.6
}
