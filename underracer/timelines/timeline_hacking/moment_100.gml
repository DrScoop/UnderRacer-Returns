sound_2play(snd_hacking)
window_set_fullscreen(false)
window_set_size(irandom(640),irandom(480))
window_center() 
window_set_showborder(false) 
//draw_flush()
d3d_set_fog(false,c_black,10,global.renderdistance)
instance_create_depth(320,240,-999999,obj_hfrisk_laughface)

