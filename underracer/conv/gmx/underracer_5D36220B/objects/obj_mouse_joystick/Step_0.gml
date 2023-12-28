if gamepad_check_button(1,global.control_pl1move_jk){y-=5}
if gamepad_check_button(1,global.control_pl1break_jk){y+=5}
if gamepad_check_button(1,global.control_pl1left_jk){x-=5}
if gamepad_check_button(1,global.control_pl1right_jk){x+=5}

if gamepad_exists(1){visible=true}
if !gamepad_exists(1){visible=false}

