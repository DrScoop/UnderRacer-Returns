image_alpha += (0.0625) / 3;

if image_alpha >= 1 { 
	if gotorom == false {
		gotorom = true; 
		alarm[0] = 1;
	}
}

