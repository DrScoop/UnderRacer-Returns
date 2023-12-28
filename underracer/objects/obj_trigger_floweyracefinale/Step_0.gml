if instance_exists(obj_kart_frisk){
if distance_to_object(obj_kart_frisk)<50{

if obj_kart_frisk.race_position=1{
if global.achieve_floweysouls!=-1{global.achieve_floweysouls=1}
instance_create(x,y,obj_dlg_floweyrace_friskwins)
instance_destroy()
}

if obj_kart_frisk.race_position=2{
instance_create(x,y,obj_dlg_floweyrace_friskloses)
instance_destroy()
}


}}

