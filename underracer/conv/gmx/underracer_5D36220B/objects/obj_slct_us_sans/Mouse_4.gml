if global.unlock_us_sans=true{
if char_selected=false{
global.char_slct+=1
sound_2play(snd_slct_sans)
image_index=1
alarm[0]=1
obj_slct_title.alarm[0]=1
char_selected=true
}
}

if global.unlock_us_sans=false{sound_2play(snd_error)}

