if activate=false{
if distance_to_object(obj_kart_frisk)<50{
global.dialogue=true
sound_2play(snd_gasterfade)
char=instance_create(x,y,obj_npc_hfrisk)
char.image_alpha=0
char.direction+=180
char.friction=0.1
alarm[0]=30
activate=true
}
}

