if global.players<3 and global.bot_trigger=true{
listsize=ds_list_size(botchar)-1

char_pick=ds_list_find_value(botchar,irandom(listsize));

char=instance_create(x,y,char_pick);
char.direction+=direction
char.bot+=1
char.player+=3
list=false
}
if global.players=3{
char=instance_create(x,y,global.char3_obj)
char.skin=global.char3_skin
char.direction+=direction
char.player+=3
}

