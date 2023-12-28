if distance_to_object(obj_kart_frisk)<120{
instance_create(x,y,obj_dlg_floweyjudgement)
instance_destroy()
}

if global.cmpn_times<2{room_goto_next()}

