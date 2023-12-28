if image_index<0{image_index=0}
if image_index>1{image_index=0}

if image_index=0{global.bot_trigger=false}
if image_index=1{global.bot_trigger=true}

