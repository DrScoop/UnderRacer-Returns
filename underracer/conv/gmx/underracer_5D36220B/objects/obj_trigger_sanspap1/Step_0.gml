if global.snowdincutscenefinal=true{instance_destroy()}

if distance_to_object(obj_kart_frisk)<120{
sound_stop_all()

instance_create(x,y,obj_dlg_sanspap1)
instance_destroy()

}

