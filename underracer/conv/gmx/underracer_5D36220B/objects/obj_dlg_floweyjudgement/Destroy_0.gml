if instance_exists(obj_kart_flowey){
global.dialogue=true
obj_kart_flowey.change_sprite=true
obj_kart_flowey.final_sprite=spr_kflowey_sink
obj_kart_flowey.image_speed=0.5
obj_kart_flowey.speed=2
instance_create(obj_kart_flowey.x,obj_kart_flowey.y,obj_trigger_floweyjudgement_end)
}

