if other.z<2{
other.fall=true
if !sound_isplaying(snd_fall){sound_2play(snd_fall)}
if other.bot=false{if global.level="CORE"{if global.achieve_corefall!=-1{global.achieve_corefall=6}}}
}

