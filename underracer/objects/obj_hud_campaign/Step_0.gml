if keyboard_check_pressed(ord("C")){checkpos_loop+=1}

if checkpos_loop=1{showpos=true}
if checkpos_loop>1{showpos=false checkpos_loop=0}

if instance_exists(target) {
	if target.lap>global.lap_limit{activate=false}
}

if destroy=true{instance_destroy()}

if instance_exists(target) {
	scr_hudstep()
}

