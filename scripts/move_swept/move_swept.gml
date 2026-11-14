// ---------- MOVEMENT (no diagonal bias) ----------
function move_swept(dx, dy) {
    var steps = max(ceil(abs(dx)), ceil(abs(dy)));
    if (steps <= 0) return;

    var stepx = dx / steps;
    var stepy = dy / steps;

    repeat (steps) {
        var nx = x + stepx;
        if (!blocked_rect(nx, y)) x = nx; else stepx = 0;

        var ny = y + stepy;
        if (!blocked_rect(x, ny)) y = ny; else stepy = 0;

        if (stepx == 0 && stepy == 0) break;
    }
}