if add_y<120{add_y+=10}

if add_y>=120{add_y=120}

if add_y=120{image_alpha-=(0.0625)/6}

if image_alpha<=0{instance_destroy()}

