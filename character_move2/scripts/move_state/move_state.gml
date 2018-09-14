/// @desc 移动控制

// 获取当前角度
dir = point_direction(0, 0, xaxis, yaxis);

// 获取长度
if(xaxis == 0 && yaxis == 0) {
	len = 0;
} else {
	len = spd;
}

// 获取速度
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

// 水平碰撞检测
if(place_meeting(x + hspd, y, obj_wall)) {
	while(!place_meeting(x + sign(hspd), y, obj_wall)) {
		x += sign(hspd);
	}
	hspd = 0;
}
x += hspd;

// 垂直碰撞检测
if(place_meeting(x, y + vspd, obj_wall)) {
	while(!place_meeting(x, y + sign(vspd), obj_wall)) {
		y += sign(vspd);
	}
	vspd = 0;
}
y += vspd;