if keyboard_check(vk_right) {
    image_speed=1*(x_speed / 10);
}else {
    image_speed = 0;
}

if keyboard_check_pressed(vk_up) {
	x_speed = (x_speed <= 30 ? (x_speed + 5) : 30)
}

if keyboard_check_pressed(vk_down) {
	x_speed = (x_speed >= 15 ? (x_speed - 5) : 10)
}

if floor(image_index)!=image_index_old {
    image_index_old = floor(image_index);
    x += x_speed;
    if x>room_width {
		x = 16;
	}
}