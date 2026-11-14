// ---------- TILES ONLY ----------
function tile_solid_at(px, py) {
    // Check ALL collision layers
    for (var i = 0; i < array_length(tm_solid_layers); i++) {
        var td = tilemap_get_at_pixel(tm_solid_layers[i], px, py); // 0 if empty
        if (tile_get_index(td) != 0) {
            return true; // Solid tile found in any layer
        }
    }
    return false; // No solid tiles found in any layer
}