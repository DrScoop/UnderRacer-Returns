if global.snowdincutscenefinal=true{instance_destroy()}

if distance_to_object(obj_kart_frisk)<120{
sans = instance_nearest(x, y, obj_kart_sans);
sans.x = 2464;
sans.y = 296;
sans.direction = 270;
instance_destroy()
}

