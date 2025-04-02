//Setup
controls();
switch(npc_type)
{
	case "idle": state = npc_idle; break;
}
//Execute
state();
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