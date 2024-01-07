function scr_cam_definesencos() {
	/*if (view_current=0) {
	if distance_to_object(obj_cam1) > global.renderdistance exit{
	camsin=obj_cam1.camsin
	camcos=obj_cam1.camcos
	cam=obj_cam1
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}

	if global.players>1{
	if (view_current=1) {
	if distance_to_object(obj_cam2) > global.renderdistance exit{
	camsin=obj_cam2.camsin
	camcos=obj_cam2.camcos
	cam=obj_cam2
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}

	if global.players>2{
	if (view_current=2) {
	if distance_to_object(obj_cam3) > global.renderdistance exit{
	camsin=obj_cam3.camsin
	camcos=obj_cam3.camcos
	cam=obj_cam3
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}

	if global.players>3{
	if (view_current=3) {
	if distance_to_object(obj_cam4) > global.renderdistance exit{
	camsin=obj_cam4.camsin
	camcos=obj_cam4.camcos
	cam=obj_cam4
	if stun=false{if change_sprite=false{scr_sprite_model(mdlspr_right,mdlspr_up,mdlspr_left,mdlspr_down,cam)}}
	}}}*/
	
    var cam_index = view_current;
    
    if (cam_index < global.players) {
        var cam_obj = noone; // Initialize cam_obj to noone

        // Determine which camera object to use based on cam_index
        switch (cam_index) {
            case 0: cam_obj = obj_cam1; break;
            case 1: cam_obj = obj_cam2; break;
            //case 2: cam_obj = obj_cam3; break;
            //case 3: cam_obj = obj_cam4; break;
        }

        // If a valid camera object is found
        if (cam_obj != noone && distance_to_object(cam_obj) < global.renderdistance) {
            camsin = cam_obj.camsin;
            camcos = cam_obj.camcos;
            cam = cam_obj;

            // Check conditions before calling scr_sprite_model
            if (!stun && !change_sprite) {
                scr_sprite_model(mdlspr_right, mdlspr_up, mdlspr_left, mdlspr_down, cam_obj);
            }
        }
    }
}
