// initialize 3D
d3d_start();
d3d_set_hidden(1);
d3d_set_culling(0);
d3d_set_lighting(global.lighting);
texture_set_repeat(0)
// interpolate textures
texture_set_interpolation(false);
d3d_set_perspective(1);
gpu_set_alphatestenable(true);
gpu_set_alphatestref(0);
can_playsong=true
d3d_set_fog(true,c_black,10,global.renderdistance)
ambient_r=global.lighting_quantity
ambient_g=global.lighting_quantity
ambient_b=global.lighting_quantity 

action_create_object(obj_escbutton_3d, x, y);
action_create_object(obj_achievement_tracker, x, y);
action_set_alarm(1, 0);
