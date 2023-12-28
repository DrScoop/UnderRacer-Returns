if instance_exists(obj_kart_frisk){
if distance_to_object(obj_kart_frisk)<50{

if obj_kart_frisk.race_position=1{
global.level="Snowdin"
global.battle_snowmobs=1
instance_create(x,y,obj_dlg_racewin)
instance_destroy()
}

if obj_kart_frisk.race_position!=1{
global.level="Snowdin"
global.battle_snowmobs=0
instance_create(x,y,obj_dlg_racelose)
instance_destroy()
}


}}

