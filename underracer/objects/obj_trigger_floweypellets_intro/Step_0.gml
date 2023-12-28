if instance_exists(obj_kart_flowey){
if obj_kart_flowey.final_sprite=spr_kflowey_laugh_start and obj_kart_flowey.image_index=8{obj_kart_flowey.image_speed=0 obj_kart_flowey.final_sprite=spr_kflowey_laugh_idle alarm[1]=25}
if obj_kart_flowey.final_sprite=spr_kflowey_laugh_end and obj_kart_flowey.image_index=8{obj_kart_flowey.image_speed=0  obj_kart_flowey.final_sprite=spr_kflowey_d}

if obj_kart_flowey.stun=true{
with obj_kart_flowey
{path_start(pth_cmpn_floweyfball,7,0,true)} 
with obj_kart_toriel
{path_start(pth_cmpn_introtorielappears,3,0,true)} 
instance_destroy()
}

}

