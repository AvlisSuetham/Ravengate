if not instance_exists(target) exit;
	x = lerp(x, target.x, 0.1);
	y = lerp(y, target.y - height_/8, 0.1);
	camera_set_view_pos(view_camera[0], x-width_/2, y-height_/2);