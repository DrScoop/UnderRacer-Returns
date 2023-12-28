if dialogue = 2{
if obj_kart_frisk.x >= 2480 and obj_kart_frisk.y >= 336 and obj_kart_papyrus.y <= 392 {scr_dialoguebox_draw()}
}

else if dialogue=41{ 
if obj_kart_papyrus.y >= 472{scr_dialoguebox_draw()}
}

else if dialogue=42{
if !instance_exists(obj_kart_papyrus){scr_dialoguebox_draw()}
}

else if dialogue<=dialoguemax{scr_dialoguebox_draw()}

