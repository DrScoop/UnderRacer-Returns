function scr_botlist_create() {
	botchar=ds_list_create();
	list=true
	list_timer=20

	ds_list_add(botchar,obj_kart_sans);
	ds_list_add(botchar,obj_kart_papyrus);
	ds_list_add(botchar,obj_kart_undyne);
	ds_list_add(botchar,obj_kart_alphys);
	ds_list_add(botchar,obj_kart_asgore);
	ds_list_add(botchar,obj_kart_mettaton);
	ds_list_add(botchar,obj_kart_toriel);
	ds_list_add(botchar,obj_kart_frisk);



}
