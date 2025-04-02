function npc_idle()
{
	mask_index = spr_npc_idle_mask;
	image_speed = 0;
	image_index = 0;
	
	if (have_dialogue)
	{
		spr_dlg_index += 0.08;
		if spr_dlg_index = 4
		{
			spr_dlg_index = 0;
		}
	}
	
}
function npc_dialogues()
{
	//Dialogues
	if (have_dialogue)
	{
		if distance_to_object(obj_player) <= 10
		{
			can_dialogue = true;
		} else {can_dialogue = false;}
	}
	if (can_dialogue) && !instance_exists(oTxt_Box)
	{
		if key_B
		{
			instance_create_layer(x,y,"Player",oTxt_Box);
		}
	}
}