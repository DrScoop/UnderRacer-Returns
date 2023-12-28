if global.papybridgecutscene=true{
if path=false{
if instance_exists(obj_kart_papyrus){
with obj_kart_papyrus{
if global.unlock_papybossrace=0{path_start(pth_cmpn_papygoestogate,7,0,true)}
if global.unlock_papybossrace=1{path_start(pth_cmpn_papygoestohouse,7,0,true)}
}
path=true
}
}
}

if global.unlock_papybossrace=0{
if distance_to_object(obj_kart_papyrus)<80{
if distance_to_object(obj_kart_frisk)<120{
instance_create(x,y,obj_dlg_papygate)
instance_destroy()
}}}

if global.unlock_papybossrace=1{
if instance_exists(obj_kart_papyrus){
obj_kart_papyrus.x=3456
obj_kart_papyrus.y=4688
obj_kart_papyrus.direction=180
}
}

