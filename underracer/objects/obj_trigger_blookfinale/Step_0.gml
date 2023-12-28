if instance_exists(obj_kart_frisk){
if distance_to_object(obj_kart_frisk)<50{

if obj_kart_frisk.race_position=1{
global.level="Ruins"
global.unlock_blook=1
instance_create(x,y,obj_dlg_blookloses)
instance_destroy()
}

if obj_kart_frisk.race_position=2{
global.level="Ruins"
global.unlock_blook=0
instance_create(x,y,obj_dlg_blookwins)
instance_destroy()
}


}}

