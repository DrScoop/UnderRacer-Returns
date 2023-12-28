if instance_exists(obj_kart_frisk){
if distance_to_object(obj_kart_frisk)<50{

if obj_kart_frisk.race_position=1{
global.level="Ruins"
global.unlock_toriel=true
instance_create(x,y,obj_dlg_torielloses)
instance_destroy()
}

if obj_kart_frisk.race_position=2{
global.level="Ruins"
global.unlock_toriel=false
instance_create(x,y,obj_dlg_torielwins)
instance_destroy()
}


}}

