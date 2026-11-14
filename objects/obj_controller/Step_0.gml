if (!instance_exists(obj_player)) exit;

var target = instance_find(obj_player, 0);
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var view_w = camera_get_view_width(cam);
var view_h = camera_get_view_height(cam);

cam_x = lerp(cam_x, target.x - view_w / 2, follow_speed);
cam_y = lerp(cam_y, target.y - view_h / 2, follow_speed);
camera_set_view_pos(cam, cam_x, cam_y);

zoom_level_current = lerp(zoom_level_current, zoom_level_target, 0.05);
camera_set_view_size(cam, base_w * zoom_level_current, base_h * zoom_level_current);
