function player_state_free(){
    // Definir as variáveis para movimento
    var move_x = key_right - key_left;
    var move_y = key_down - key_up;
    hspd = move_x * spd;  // velocidade horizontal
    vspd = move_y * spd;  // velocidade vertical

    // Atualizar a direção da imagem conforme a direção do movimento
    if (hspd != 0) image_xscale = sign(hspd);

    // Variável para verificar se houve colisão
    var collision = false;

    // Colisão Horizontal
    if (place_meeting(x + hspd, y, obj_solid)) {
        while (!place_meeting(x + sign(hspd), y, obj_solid)) {
            x = x + sign(hspd);
        }
        hspd = 0;
        collision = true;
    } else {
        x = x + hspd;
    }

    // Colisão Vertical
    if (place_meeting(x, y + vspd, obj_solid)) {
        while (!place_meeting(x, y + sign(vspd), obj_solid)) {
            y = y + sign(vspd);
        }
        vspd = 0;
        collision = true;
    } else {
        y = y + vspd;
    }

    // Atualizar profundidade baseado na posição do NPC mais próximo
    var depth_adjusted = false;
    with (obj_npc) {
        if (other.y > y) {
            // NPC fica na frente do player
            other.depth = -other.y;
            depth = -y - 1; 
        } else {
            // NPC fica atrás do player
            other.depth = -other.y - 1;
            depth = -y;
        }
        depth_adjusted = true;
    }

    // Se não houver NPCs próximos, usa a regra padrão
    if (!depth_adjusted) {
        depth = -y;
    }

    // Trocar sprites baseadas no movimento
    if (hspd != 0) {
        sprite_index = p_walk; // Se estiver andando para os lados, usa p_walk
    } else if (vspd < 0) {
        sprite_index = p_walk_up; // Se estiver subindo, usa p_walk_up
    } else if (vspd > 0) {
        sprite_index = p_walk_down; // Se estiver descendo, usa p_walk_down
    } else {
        image_index = 0;
    }
	
	//Troca sprites baseadas no apertar de botões
	if key_down
	{sprite_index = p_walk_down;}
	if key_up
	{sprite_index = p_walk_up;}
	if key_left
	{sprite_index = p_walk;}
	if key_right
	{sprite_index = p_walk;}
	
}
