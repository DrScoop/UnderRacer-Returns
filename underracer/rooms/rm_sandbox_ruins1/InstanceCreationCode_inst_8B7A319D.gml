fx=instance_create(x,y,obj_snowfloorfx) 
fx.target=id 
fx.direction=direction 
fx.speed=0
fx.friction=0.1
sound_2play(snd_magic)

//Start Point Object for Singleplayer Mode
//Here, the bots and the players will be spawned by the game, in the point where the object is in the room.
char=instance_create(x,y,global.char1_obj)
char.skin=global.char1_skin
char.direction+=direction
char.player+=1
char.speed+=global.start_speed

action_kill_object();