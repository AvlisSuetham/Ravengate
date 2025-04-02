// Caixa de fundo (Retângulo branco para a borda)
draw_set_color(c_white);
draw_rectangle(5 - 5, 600 - 5, 1360 + 5, 760 + 5, false);

// Caixa de fundo (Retângulo preto)
draw_set_color(c_black);
draw_rectangle(5, 600, 1360, 760, false);

// Face do Personagem
draw_set_color(c_white);
draw_sprite_ext(sMugshots, 0, 90, 680, 3, 3, 0, c_white, 1);

// Copiar para variável
var _text = string_copy(page, 0, indice);

// Texto
draw_set_color(text_color);
draw_text_color(198, 620, char_name, char_color, char_color, char_color, char_color, 1);
draw_text_ext(178 + merge, 630 + merge, _text, 25, 1170 - merge * 2);
