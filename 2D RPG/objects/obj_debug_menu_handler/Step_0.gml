/// @description Opening and Closing The Menu
if (keyboard_check_pressed(ord("D"))) {
    show_gui = true // Show the GUI when D is pressed
}

if (keyboard_check_pressed(ord("F"))) {
    show_gui = false // Hide the GUI when F is pressed
}

if show_game_over = true {
if (mouse_check_button_pressed(mb_left)) {
    // Debug: Output mouse coordinates
    show_debug_message("Mouse X: " + string(device_mouse_x_to_gui(0)) + ", Mouse Y: " + string(device_mouse_y_to_gui(0)));
    
    // Check if the mouse click is within the bounds of the button
    if (device_mouse_x_to_gui(0) >= button_x && device_mouse_x_to_gui(0) <= button_x + button_width &&
        device_mouse_y_to_gui(0) >= button_y && device_mouse_y_to_gui(0) <= button_y + button_height) {
        // Debug: Confirm button click
        show_debug_message("Button clicked!");

        // Reset game logic (e.g., reset global variables, restart room)
        global.health = 100; // Reset health or any other global variables
        game_restart(); // Restart the current room
    }
}
}


if show_gui = true {
if (global.health > 0) {
    // Example code for updating health
    if (keyboard_check_pressed(vk_space)) {
        global.health -= 50; // Reduce health by 10 when space is pressed
    }
}
}
