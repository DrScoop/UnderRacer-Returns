if keyboard_check_pressed(ord("C")){checkpos_loop+=1}

if checkpos_loop=1{showpos=true}
if checkpos_loop>1{showpos=false checkpos_loop=0}

if destroy=true{instance_destroy()}

scr_hudstep()

if global.racewon=true{activate=true}

