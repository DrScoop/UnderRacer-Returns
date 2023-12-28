//Variables Settings
kart_maxspd=6.9
kart_accel=0.25
kart_turn=4.75
final_sprite=spr_kaster_d
mdlspr_right=spr_kaster_r
mdlspr_left=spr_kaster_l
mdlspr_down=spr_kaster_d
mdlspr_up=spr_kaster_u
mdlspr_stun=spr_kaster_stun
mdlspr_victory=spr_kaster_victory
mdlspr_defeat=spr_kaster_defeat
mdlspr_down_look=spr_kaster_lookd
char="Gaster"
kartwidth=7
kartheight=15+z
kartbottom=0+z
scr_kartsettings_create()
hand1=instance_create(x,y,obj_kaster_hands)
hand1.target=id
hand1.DY=6
hand1.adddir_dir=1
hand2=instance_create(x,y,obj_kaster_hands)
hand2.target=id
hand2.DY=-6
hand2.adddir_dir=-1

action_set_alarm(1, 0);
