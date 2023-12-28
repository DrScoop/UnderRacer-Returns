if distance_to_object(obj_kart_frisk)<dist{
visible=true

if keyboard_check_pressed(global.control_pl1use_kb){
if global.dialogue=false{
global.dialogue=true
if talk=1{instance_create(x,y,dlgobj1) alarm[0]=1}
if talk=2{instance_create(x,y,dlgobj2) alarm[0]=1}
if talk=3{instance_create(x,y,dlgobj3) alarm[0]=1}
}}

if gamepad_button_check_pressed(1,global.control_pl1use_jk){
if global.dialogue=false{
global.dialogue=true
if talk=1{instance_create(x,y,dlgobj1) alarm[0]=1}
if talk=2{instance_create(x,y,dlgobj2) alarm[0]=1}
if talk=3{instance_create(x,y,dlgobj3) alarm[0]=1}
}}

}

if distance_to_object(obj_kart_frisk)>dist{visible=false}

if talk>talkmax{talk=talkmax}

