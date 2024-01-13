if dialogue=1{ 
	dlg=instance_create_depth(x,y,-201,obj_writer);
	spriteface=spr_dlg_flowey_normal
	with dlg
	{
		txtsound=snd_talk_flowey
		writer_msg(
		"\\W* Howdy! I'm \\YFLOWEY\\W!&* \\YFLOWEY\\W the \\YFLOWER\\W!")
	}
}

if dialogue=2{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"\\W* Hmmm...&* You're new to the &\\YRACING CIRCUIT\\W, aren'tcha?\\W")
}}  

if dialogue=3{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Golly, you must be&so confused.")
}}

if dialogue=4{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* Someone ought to&teach you how things&work around here!")
}}

if dialogue=5{ 
dlg=instance_create_depth(x,y,-201,obj_writer);
spriteface=spr_dlg_flowey_normal
with dlg
{
txtsound=snd_talk_flowey
writer_msg(
"* I guess little old me&will have to do.&* Ready? Here we go!")
}}

if dialogue>dialoguemax{instance_destroy()}

