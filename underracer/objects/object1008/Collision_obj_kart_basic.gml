sound_2play(snd_lapcomplete)
other.x+=48
other.lap+=1
if !global.racewon {
	other.bot_pathstart=true
}

if other.lap=global.lap_limit+1{
position+=1
other.race_position=position
alarm[1]=1
}

lastracer_id=other.id
lastracer_player=other.player

if other.player=1{
player1_time=other.steps
player1_minutes=other.draw_minutes
player1_seconds=other.draw_seconds
player1_id=other.id
player1_char=other.char
}
else
if other.player=2{
player2_time=other.steps
player2_minutes=other.draw_minutes
player2_seconds=other.draw_seconds
player2_id=other.id
player2_char=other.char
}
else
if other.player=3{
player3_time=other.steps
player3_minutes=other.draw_minutes
player3_seconds=other.draw_seconds
player3_id=other.id
player3_char=other.char
}
else
if other.player=4{
player4_time=other.steps
player4_minutes=other.draw_minutes
player4_seconds=other.draw_seconds
player4_id=other.id
player4_char=other.char
}
else
if other.player=5{
player5_time=other.steps
player5_minutes=other.draw_minutes
player5_seconds=other.draw_seconds
player5_id=other.id
player5_char=other.char
}
else
if other.player=6{
player6_time=other.steps
player6_minutes=other.draw_minutes
player6_seconds=other.draw_seconds
player6_id=other.id
player6_char=other.char
}

