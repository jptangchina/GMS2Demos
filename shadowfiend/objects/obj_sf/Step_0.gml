/// @description Insert description here
// You can write your code in this editor

if(keyboard_check_pressed(vk_space)) {
	animation_index = animation_index >= 5 ? 0 : (animation_index + 1);
	skeleton_animation_set_ext(animations[animation_index], 1);
}