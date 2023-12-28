if other.z<kartheight{
//if global.gamemode!="Campaign"{
if strafedir=1{
var xn,yn;
// iSpeed is the speed you want it to go //
xn = x - sin(direction*pi/180) * kart_maxspd/2;
yn = y - cos(direction*pi/180) * kart_maxspd/2;
if not place_meeting(xn,yn,obj_kart_basic)
{ x = xn; y = yn; }}
if strafedir=-1{
var xn,yn;
// iSpeed is the speed you want it to go //
xn = x + sin(direction*pi/180) * kart_maxspd/2;
yn = y + cos(direction*pi/180) * kart_maxspd/2;
if not place_meeting(xn,yn,obj_kart_basic)
{ x = xn; y = yn; }}
//}

if other.powerup="Spaghetti" and other.powerup_timer<50{stun=true}
if other.ability="Spaghettore" and other.ability_timer<100{stun=true}
}
