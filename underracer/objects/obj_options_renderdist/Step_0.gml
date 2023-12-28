if image_index<0{image_index=2}
if image_index>2{image_index=0}

if image_index=0{global.renderdistance=960}
if image_index=1{global.renderdistance=640}
if image_index=2{global.renderdistance=360}

