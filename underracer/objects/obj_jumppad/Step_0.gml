if (view_current=0) {
if distance_to_object(obj_cam1) > global.renderdistance exit{
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
}}

if global.players>1{
if (view_current=1) {
if distance_to_object(obj_cam2) > global.renderdistance exit{
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
}}}

