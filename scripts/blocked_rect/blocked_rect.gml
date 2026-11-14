function blocked_rect(nx, ny) {
    if (debug_objects && objects_block_at(nx, ny)) return true;
    if (debug_tiles && tiles_block_rect(nx, ny)) return true;
    return false;
}