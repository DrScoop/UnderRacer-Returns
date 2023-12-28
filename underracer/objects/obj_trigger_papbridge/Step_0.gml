if global.snowdincutscenefinal=true{
if kartcreated=false{
var kart;
kart=instance_create(x,y,obj_kart_papyrus)
kart.direction=90
kartcreated=true
}}

if global.papybridgecutscene=false{
if distance_to_object(obj_kart_frisk)<120{
instance_create(x,y,obj_dlg_papybridge)
instance_destroy()
}}

