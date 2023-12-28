if setplayerpos=true{
if instance_exists(obj_kart_frisk){
obj_kart_frisk.x=global.cmpn_posx
obj_kart_frisk.y=global.cmpn_posy
obj_kart_frisk.direction=global.cmpn_dir
setplayerpos=false
}}

direction+=0.5
if direction>360{direction=0}

if distance_to_object(obj_kart_frisk)<10{

if keyboard_check_pressed(global.control_pl1use_kb){
if other.player=1{
if !instance_exists(obj_hud_save){
instance_create(x,y,obj_hud_save)
global.dialogue=true
}}}

if gamepad_check_button_pressed(1,global.control_pl1use_jk){
if other.player=1{
if !instance_exists(obj_hud_save){
instance_create(x,y,obj_hud_save)
global.dialogue=true
}}}

}

// Place this code in the step event of your 3d object
if playdir == 1
{
  if loopanim
  {
    if playanim
    {
      if frame == maxframe
      {
        if playbf playdir = -1;
        else frame = 0;
      }
      else frame = min(maxframe,frame+animspeed);
    }
  }
  else
  {
    if playanim frame = min(maxframe,frame+animspeed);
    if frame == maxframe
    {
      if playbf playdir = -1;
      else playanim = false;
    }
  }
}
else
{
  if loopanim
  {
    if playanim
    {
      if frame == 0
      {
        if playbf playdir = 1;
        else frame = maxframe;
      }
      else frame = max(0,frame-animspeed);
    }
  }
  else
  {
    if playanim frame = max(0,frame-animspeed);
    if frame == 0 
    {
      if playbf playdir = 1;
      playanim = false;
    }
  }
}
// end step event code

