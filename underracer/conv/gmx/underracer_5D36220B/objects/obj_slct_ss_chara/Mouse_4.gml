if global.unlock_ss_chara=true{
if char_selected=false{
global.char_slct+=1
sound_2play(snd_slct_chara)
image_index=1
alarm[0]=1
obj_slct_title.alarm[0]=1
char_selected=true
}
}

if global.unlock_ss_chara=false{sound_2play(snd_error)}

