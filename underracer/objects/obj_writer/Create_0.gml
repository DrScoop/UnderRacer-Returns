doak=0;
stringno=0;
stringpos=1; //which character of the string it starts on
lineno=0; //default the line's vertical space
halt=0; //if 1, you must hit enter to continue
writingx = 136;
writingy = 336;
myx = writingx;
myy = writingy;
txtsound = snd_text;
txtcolor=c_white
textspeed=10;
dialogue=0
dialoguemax=3
image_speed=0.25
destroy=false
font=fnt_dt

border_x1[1]= 32;
border_x2[1]= 536;
border_y1[1]= 250;
border_y2[1]= 385;

scr_textsetup(font,c_white,writingx,writingy,writingx+(border_x2[1]-55),0,1,txtsound,19,32);

var i;
for (i=0; i<24; i+=1)
{
mystring[i]="%%%";
}

alarm[0]=textspeed;
alarm[1]=1;
originalstring="";

spriteface=spr_none

