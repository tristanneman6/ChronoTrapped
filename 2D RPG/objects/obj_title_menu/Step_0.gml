//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu
op_length = array_length(option[menu_level])

//move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};


//using the options
if accept_key {
	
		var _sml = menu_level;
	
			switch(menu_level) {
			
				//pause menu
				case 0:
			switch(pos){
				//start game
				case 0: room_goto_next() break;
				//settings
				case 1: menu_level = 1; break;
				//quit game
				case 2: game_end() break;
			}
			break;
		
			//settings
			case 1:
			switch(pos) {
				//controls
				case 0:
			menu_level = 2;
				break;
			
				//back
				case 1:
				menu_level = 0
				break;
			}
			break;
			
			//controls
			case 2:
			switch(pos) {
				//fulscreen
				case 0: break;
				//move
				case 1: break;
				//accept
				case 2: break;
				//quit
				case 3: break;
				//back
				case 4: 
				menu_level = 0
				break;
			}
			break;
		}

	//set position back
	if _sml != menu_level {pos = 0};

	//correct option length
	op_length = array_length(option[menu_level])

	}