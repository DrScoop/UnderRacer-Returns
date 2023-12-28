if global.level_selected=true{
if clickd=false{
clickd=true
image_index=2
alarm[0]=15
sound_2play(snd_ready)
}}

if global.level_selected=false{sound_2play(snd_error)}

other.x=other.xprevious
other.y=other.yprevious

