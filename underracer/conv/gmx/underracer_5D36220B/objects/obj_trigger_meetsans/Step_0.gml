if global.snowdincutscenefinal=true{instance_destroy()}

if distance_to_object(obj_kart_frisk)<120{
sound_stop_all()

if obj_kart_frisk.direction < 135 or obj_kart_frisk.direction > 225{instance_create(x,y,obj_dlg_meetsans)}
else{instance_create(x,y,obj_dlg_meetsansalt)}

instance_destroy()

}

