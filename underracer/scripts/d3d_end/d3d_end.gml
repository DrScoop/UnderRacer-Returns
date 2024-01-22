/// @description d3d - disable 3d
function d3d_end() {
    var ret = global.__d3d;
    global.__d3d = false;
    gpu_set_ztestenable(false);
    gpu_set_zwriteenable(false);

    // Reset the projection matrix for 2D view
    var ortho_width = __view_get(e__VW.WView, 0);
    var ortho_height = __view_get(e__VW.HView, 0);

    var mV = matrix_build_identity();
    camera_set_view_mat(camera_get_active(), mV);

    var mP = matrix_build_projection_ortho(ortho_width, ortho_height, -1000, 1000);
    camera_set_proj_mat(camera_get_active(), mP);

    // Apply the camera settings
    camera_apply(camera_get_active());

    return ret;
}

