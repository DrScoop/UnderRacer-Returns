if position_meeting(mouse_x,mouse_y,obj_slct_flowey){
global.preview_charname="Flowey"
sprite_index=spr_kflowey_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_frisk){
global.preview_charname="Frisk"
sprite_index=spr_kfrisk_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_papyrus){
global.preview_charname="Papyrus"
sprite_index=spr_kpapy_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_sans){
global.preview_charname="Sans"
sprite_index=spr_ksans_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_muffet){
global.preview_charname="Muffet"
sprite_index=spr_kmuffet_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_maddummy){
global.preview_charname="Mad Dummy"
sprite_index=spr_kmad_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_toriel){
global.preview_charname="Toriel"
sprite_index=spr_ktori_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_asgore){
global.preview_charname="Asgore"
sprite_index=spr_kasgore_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_undyne){
global.preview_charname="Undyne"
sprite_index=spr_kundy_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_alphys){
global.preview_charname="Alphys"
sprite_index=spr_kalphys_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_mettaton){
global.preview_charname="Mettaton"
sprite_index=spr_kmtt_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_mttex){
global.preview_charname="Mettaton EX"
sprite_index=spr_kmttex_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_bpants){
global.preview_charname="Burgerpants"
sprite_index=spr_kbpants_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_mk){
global.preview_charname="Monster Kid"
sprite_index=spr_kmk_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_tem){
global.preview_charname="Temmie"
sprite_index=spr_tem_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_napstablook){
global.preview_charname="Napstablook"
sprite_index=spr_kblook_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_gaster){
if instance_exists(obj_slct_gaster){
if obj_slct_gaster.sprite_index!=spr_slct_nochar{
global.preview_charname="Gaster"
sprite_index=spr_kaster_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_us_sans){
if instance_exists(obj_slct_us_sans){
if obj_slct_us_sans.sprite_index!=spr_slct_nochar{
global.preview_charname="US!Sans"
sprite_index=spr_us_sans_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_uf_papy){
if instance_exists(obj_slct_uf_papy){
if obj_slct_uf_papy.sprite_index!=spr_slct_nochar{
global.preview_charname="UF!Papyrus"
sprite_index=spr_uf_papy_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_ss_chara){
if instance_exists(obj_slct_ss_chara){
if obj_slct_ss_chara.sprite_index!=spr_slct_nochar{
global.preview_charname="SS!Chara"
sprite_index=spr_sschara_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_asriel){
if instance_exists(obj_slct_asriel){
if obj_slct_asriel.sprite_index!=spr_slct_nochar{
global.preview_charname="Asriel"
sprite_index=spr_kasriel_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_toby){
if instance_exists(obj_slct_toby){
if obj_slct_toby.sprite_index!=spr_slct_nochar{
global.preview_charname="Annoying Dog"
sprite_index=spr_ktoby_d
}}}

if position_meeting(mouse_x,mouse_y,obj_slct_doggo){
global.preview_charname="Doggo"
sprite_index=spr_doggo_d
}

if position_meeting(mouse_x,mouse_y,obj_slct_grillby){
global.preview_charname="Grillby"
sprite_index=spr_kgrill_d
}

