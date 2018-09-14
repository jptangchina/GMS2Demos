/// @desc 输入控制

// 键盘控制
rKey = max(keyboard_check(vk_right), keyboard_check(ord("D")), 0);
lKey = max(keyboard_check(vk_left), keyboard_check(ord("A")), 0);
uKey = max(keyboard_check(vk_up), keyboard_check(ord("W")), 0);
dKey = max(keyboard_check(vk_down), keyboard_check(ord("S")), 0);

xaxis = (rKey - lKey);
yaxis = (dKey - uKey);

// 手柄控制
if(gamepad_is_connected(0)) {
	rKey = gamepad_button_check(0, gp_padr);
	lKey = gamepad_button_check(0, gp_padl);
	uKey = gamepad_button_check(0, gp_padu);
	dKey = gamepad_button_check(0, gp_padd);
	
	xaxis = max(gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axisrh), rKey - lKey, 0);
	yaxis = max(gamepad_axis_value(0, gp_axislv), gamepad_axis_value(0, gp_axisrv), dKey - uKey, 0);
}