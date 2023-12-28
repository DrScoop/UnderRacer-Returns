if instance_exists(obj_kart_frisk){
x=obj_kart_frisk.x
y=obj_kart_frisk.y
}

if antilag=true{
instance_activate_all();
instance_deactivate_region(x-global.renderdistance/2,y-global.renderdistance/2,global.renderdistance,global.renderdistance,false,true);
}

