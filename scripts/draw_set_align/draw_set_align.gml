var str = argument0;

switch (str) {
	case "left":
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
	case "right":
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		break;
	case "center":
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		break;
	default:
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}