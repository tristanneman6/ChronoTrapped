// Step Event of objGameController

if (keyboard_check(vk_escape)) {
    // Increase the hold time
	quitting = true
    escape_hold_time += 1;
    
    // Check if the key has been held for 2 seconds (2 seconds * room_speed)
    if (escape_hold_time >= 2 * room_speed) {
        game_end(); // Quit the game
    }
} else {
    // Reset the hold time if the key is released
	quitting = false
    escape_hold_time = 0;
}