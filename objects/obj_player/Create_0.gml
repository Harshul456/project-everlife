/// CREATE — obj_player

h_last = 1;
v_last = 0;
hsp = 0;
vsp = 0;
move_speed = 1.5;

scale_visual = 0.6;
image_xscale = h_last * scale_visual;
image_yscale = scale_visual;

debug_tiles = true;
debug_objects = false;
debug_collisions = true;

invincible = false;
invincibleTimer = 0;
blinkDelay = 5;
blinkCounter = 0;
image_alpha = 1;
knockBackX = 0;
knockBackY = 0;
stunTimer = 0;

mask_index = spr_player_mask;

// Optional tile collision. room_sample has no Collisions layer, so this stays empty until one is added.
collision_layers = ["Collisions"];
tm_solid_layers = [];

for (var i = 0; i < array_length(collision_layers); i++) {
    var lyr = layer_get_id(collision_layers[i]);
    if (lyr == -1) continue;
    var tm = layer_tilemap_get_id(lyr);
    if (tm != -1) array_push(tm_solid_layers, tm);
}

t_w = 0;
t_h = 0;
if (array_length(tm_solid_layers) > 0) {
    t_w = tilemap_get_tile_width(tm_solid_layers[0]);
    t_h = tilemap_get_tile_height(tm_solid_layers[0]);
}
