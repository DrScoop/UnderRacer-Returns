function writer_msg(argument0) {
    var i;

    // Find the position of "%%%" in mystring
    for (i = 0; i < array_length(mystring) && mystring[i] != "%%%"; i += 1) {
    }

    // Check if "%%%" was found
    if (i < array_length(mystring)) {
        mystring[i] = argument0;
        originalstring = mystring[0];
    }
}
