function game_resolution()
{
	// Detecta a resolução do monitor
	global.res_width = 1366;
	global.res_height = 768;

	// Ajusta a resolução da janela do jogo para a resolução do monitor
	window_set_size(global.res_width, global.res_height);

	// Configura a viewport para ajustar ao novo tamanho
	display_set_gui_size(global.res_width, global.res_height);

	// Centraliza a janela no monitor
	window_set_position((global.res_width - window_get_width()) / 2, 
	(global.res_height - window_get_height()) / 2);
}