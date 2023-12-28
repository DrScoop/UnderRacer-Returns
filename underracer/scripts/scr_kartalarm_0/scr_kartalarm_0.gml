function scr_kartalarm_0() {
	if bot=false{
	//If Gamemode is Race
	if global.gamemode="Race"{
	if global.players=1{if player=1{obj_cam1.target=id}}
	if global.players=2{if player=1{obj_cam1.target=id camobj=obj_cam1} if player=2{obj_cam2.target=id camobj=obj_cam2}}
	}
	if global.gamemode="Campaign"{if player=1{obj_cam1.target=id}}
	}

	if bot=true{
	if global.level="Ruins"{botpath=choose(pth_ruins1,pth_ruins2)}
	if global.level="CORE"{botpath=choose(pth_core1,pth_core2)}
	if global.level="Snowdin Forest"{botpath=choose(pth_snowdinforest1,pth_snowdinforest2)}
	if global.level="Waterfall"{botpath=choose(pth_waterfall1,pth_waterfall2)}
	if global.level="Blook Boss"{botpath=pth_cmpn_blookbattle}
	if global.level="Toriel Boss"{botpath=pth_cmpn_torielbattle}
	if global.level="Ruins Battle"{botpath=pth_cmpn_ruinsmobbattle}
	if global.level="Sans Rally"{botpath=choose(pth_snowdrakerally1)}
	if global.level="Snowdin Battle"{botpath=choose(pth_snowmobbattle1,pth_snowmobbattle2)}
	if global.level="Christmas"{botpath=choose(pth_christmas1,pth_christmas2)}
	if global.level="Papyrus Boss"{botpath=choose(pth_snowmobbattle1,pth_snowmobbattle2)}
	}



}
