switch(async_load[? "event_type"])
{
    case "gamepad discovered":
{
    for(var i = 0; i < array_length_1d(global.players); i++){
        if(global.players[i] == async_load[? "pad_index"]){
            //controller already exists in the array
            exit;
        }
        
        if(global.players[i] == noone){
            //empty slot
            break;
        }
    }
    global.players[@ i] = async_load[? "pad_index"];
    gamepad_set_axis_deadzone(global.players[i],0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(global.players[i],0.1);    // Set the "threshold" for the triggers
    show_debug_message("controller slot " + string(i) + " connected");
    show_debug_message("controller number " + string(global.players[i]) + " connected");
    with ( instance_create_layer(x,y,"Instances_1", get_character(i))) {
        padIndex = global.players[i];
		if (i >= 4)
		{
		global.players[i] = noone;
		}
    }
}
break;
case "gamepad lost":
    for(var i = 0; i < array_length_1d(global.players); i++){
        if(global.players[i] == async_load[? "pad_index"]){
            show_debug_message("controller slot " + string(i) + " disconnected");
            show_debug_message("controller number " + string(global.players[i]) + " disconnected");
			if (i <= 3)
			{
			global.players[i] = noone;
			}
		}
    }
break;
}