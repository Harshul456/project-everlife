// Our bbox at (nx,ny) touching any solid tile?
function tiles_block_rect(nx, ny) {
    var dl = bbox_left  - x, dr = bbox_right - x;
    var dt = bbox_top   - y, db = bbox_bottom- y;

    var l = nx + dl, r = nx + dr;
    var t = ny + dt, b = ny + db;

    var e = 0.1;
    return  tile_solid_at(l+e, t+e)
        ||  tile_solid_at(r-e, t+e)
        ||  tile_solid_at(l+e, b-e)
        ||  tile_solid_at(r-e, b-e);
}