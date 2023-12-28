if distance_to_object(obj_kart_frisk)<50{
sound_stop_all()
if obj_kart_frisk.direction < 90 or obj_kart_frisk.direction > 270{instance_create(x,y,obj_dlg_meetsans)}
else{instance_create(x,y,obj_dlg_meetsansalt)}
instance_destroy()
}

