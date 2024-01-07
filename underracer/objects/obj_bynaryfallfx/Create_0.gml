if instance_exists(global.char1_obj) {
	camsin=global.char1_obj.camsin;
	camcos=global.char1_obj.camcos;
} else {
	camsin = 0;
	camcos = 0;
}
cam=0
stun=false
image_speed=0
image_index=choose(0,1)
alarm[0]=choose(15,20,25,30)
can_target=false
target=0
fallspd=choose(1,2,4,3)
z=choose(256,232,200,256)

