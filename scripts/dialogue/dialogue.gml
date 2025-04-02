function srDialogues(){
#region USA
//Start Dialogue
if global.dialogue = 0 && global.language = 0
{
text_color = c_white
text = "I need go back with Ana for lunch..."
text2 = "From what I remember, at this time she must be at the gym with her friends.."
}
#endregion
//
#region PT-BR
//Dialogo Inicial
if global.dialogue = 0 && global.language = 1
{
text_color = c_white
text = "Preciso ir buscar Ana para o almoço..."
text2 = "Pelo que lembro, essa hora ela deve estar no Ginásio principal com os amigos."
}
//Dialogo Jonas Maconheiro
if global.dialogue = 1 && global.language = 1
{
text_color = c_white
text = "Estou refletindo um pouco sobre alguns problemas..."
text2 = "Se um pato perde a pata, ele fica manco ou viúvo?"
text3 = "Por que os pilotos kamikazes usavam capacetes?"
text4 = "Por que os bancos cobram taxas por saldo insuficiente se sabem que a pessoa não tem dinheiro para pagar?"
text5 = "Acho que deveria parar de fumar, mas isso me deixa muito descolado... UwU"
}
#endregion
}
function srDialoguePages()
{
//Dialago Inicial
if global.dialogue = 0
{
page_end = 2
//
if page_nb = 0
{
page = text
page_spd = 0.4;
char_name = "Ravi"
char_color = c_white
char_img = 0;
}
//
if page_nb = 1
{
page = text2
page_spd = 0.4;
char_name = "Ravi"
char_color = c_white
char_img = 0;
}
//
if page_nb = page_end
{
instance_destroy(self)
}
}
//Dialago #2
if global.dialogue = 1
{
page_end = 5
//
if page_nb = 0
{
page = text
page_spd = 0.4;
char_name = "Thierry"
char_color = c_red
char_img = 1;
}
//
if page_nb = 1
{
page = text2
page_spd = 0.4;
char_name = "Thierry"
char_color = c_red
char_img = 1;
}
//
if page_nb = 2
{
page = text3
page_spd = 0.4;
char_name = "Thierry"
char_color = c_red
char_img = 1;
}
//
if page_nb = 3
{
page = text4
page_spd = 0.4;
char_name = "Thierry"
char_color = c_red
char_img = 1;
}
//
if page_nb = 4
{
page = text5
page_spd = 0.4;
char_name = "Thierry"
char_color = c_red
char_img = 1;
}
//
if page_nb = page_end
{
instance_destroy(self)
}
}
//Dialago #3
}