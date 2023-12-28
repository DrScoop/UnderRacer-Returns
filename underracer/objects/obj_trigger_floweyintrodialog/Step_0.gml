if distance_to_object(obj_kart_frisk)<120{
sound_2loop(global.snd_flowey)

if global.cmpn_floweyintro=0{
global.cmpn_floweyintro+=1
instance_create(x,y,obj_dlg_introflowey)
instance_destroy()
}
else
if global.cmpn_floweyintro!=0{
instance_create(x,y,obj_dlg_introflowey2)
instance_destroy()
}

}

