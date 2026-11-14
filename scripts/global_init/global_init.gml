// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function global_init(){
window_set_fullscreen(true)
gpu_set_texfilter(false); // Disables "Interpolate Colors" (already done, but safe to force)
display_reset(0, true);   // Forces VSync ON via code
}