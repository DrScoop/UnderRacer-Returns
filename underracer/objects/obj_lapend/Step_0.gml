if can_start {
    if global.player1_id != 0 {
        scr_timetoname(global.player1_id, global.player1_char);
    }

    if global.player2_id != 0 {
        scr_timetoname(global.player2_id, global.player2_char);
    }

    if global.player3_id != 0 {
        scr_timetoname(global.player3_id, global.player3_char);
    }

    if global.player4_id != 0 {
        scr_timetoname(global.player4_id, global.player4_char);
    }

    if global.player5_id != 0 {
        scr_timetoname(global.player5_id, global.player5_char);
    }

    if global.player6_id != 0 {
        scr_timetoname(global.player6_id, global.player6_char);
    }
}


if position>6{position=0}

