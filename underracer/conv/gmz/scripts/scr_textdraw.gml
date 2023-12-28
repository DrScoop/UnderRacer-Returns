myx = writingx;
myy = writingy;
for (n=1; n < stringpos+1; n=n+1)
{

if string_char_at(originalstring,n)="&" then
    {
    scr_newline();
    n = (n + 1);
    }
    
if string_char_at(originalstring,n)="^" then
    {
    n = (n + 2);
    }

if string_char_at(originalstring,n)="\" then
    {
    if string_char_at(originalstring,n+1)="R" then mycolor=c_red
    if string_char_at(originalstring,n+1)="W" then mycolor=c_white
    if string_char_at(originalstring,n+1)="Y" then mycolor=c_yellow
    if string_char_at(originalstring,n+1)="X" then mycolor=c_black
    if string_char_at(originalstring,n+1)="B" then mycolor=c_blue
    n = (n + 2);
    }
    
if string_char_at(originalstring,n)="/" then 
   {
    halt = 1;
    if string_char_at(originalstring,n+1)="%"
    halt = 2;
    if string_char_at(originalstring,n+1)="^"
    halt = 3;
    break;
   }
   
if string_char_at(originalstring,n)="%" then 
   {
   if string_char_at(originalstring,n+1)="%" then 
       {
       instance_destroy();
       break;
       }
    stringpos=1;
    stringno=(stringno+1);
    originalstring=mystring[stringno];
    myx = writingx;
    myy = writingy;
    lineno = 0;
    alarm[0] = textspeed;
    myletter = " ";
    break;
   }
    
if myx > writingxend
    { 
    scr_newline();
    }
    
myletter = string_char_at(originalstring, n);

draw_set_font(myfont); //set the font
draw_set_color(mycolor); //set the font color
if shake>38
{
  if shake=39 //earthquake until end
     {
     direction = direction+10;
     draw_text_transformed(myx+hspeed, myy+vspeed, myletter,1.5,1.5,0) 
     }
  if shake=40 
  draw_text(myx+hspeed, myy+vspeed, myletter); //all roll
  if shake=41 //demoscene roll
     {
     direction = direction+10*n;
     draw_text_transformed(myx+hspeed, myy+vspeed, myletter,1.5,1.5,0) 
     direction = direction-10*n;
     }
  if shake=42 //drifting text
     {
     direction = direction+20*n;
     draw_text_transformed(myx+hspeed, myy+vspeed, myletter,1.5,1.5,0) 
     direction = direction-20*n;
     }
    if shake=43 //singing
     {
     direction = direction+30*n;
     draw_text_transformed(myx+hspeed*0.70+10, myy+vspeed*0.70, myletter,1.5,1.5,0) 
     direction = direction-30*n;
     }
}
else 
draw_text_transformed(myx + (random(shake)-(shake/2)), myy + (random(shake)-(shake/2)), myletter,1.5,1.5,0) 
myx = (myx + spacing);
}
draw_set_color(c_black); 
