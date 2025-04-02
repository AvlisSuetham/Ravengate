# Ravengate Engine

Ravengate Engine é uma engine open-source desenvolvida no **GameMaker**, focada em oferecer uma base sólida para jogos **2D de ação e aventura**. O projeto foi criado para facilitar o desenvolvimento de games, fornecendo **movimentação precisa, colisões perfeitas e um sistema modular de estados do jogador**.

## 🎮 Recursos Principais

✅ **Movimentação fluida e precisa** (com colisão pixel-perfect)  
✅ **Sistema de estados do jogador** (idle, walk, run, jump, etc.)  
✅ **Sprites dinâmicas para animação do personagem**  
✅ **Gerenciamento de entrada do jogador** (teclado e gamepad)  
✅ **Sistema modular para fácil customização**  
✅ **Código limpo e bem documentado**  

## 📥 Download e Instalação

1. Clone este repositório:
   ```sh
   git clone https://github.com/seuusuario/ravengate-engine.git
   ```
2. Abra o **GameMaker** e importe o projeto.
3. Customize e comece a desenvolver seu próprio jogo!

## 🚀 Como Usar

A Ravengate Engine já vem com um sistema de movimentação configurado. Para modificar ou adicionar funcionalidades:

- O código principal do jogador está no script **player_state_free()**.
- As colisões são gerenciadas de forma precisa usando `place_meeting()`.
- Para alterar sprites, edite as variáveis `p_walk`, `p_idle`, `p_walk_up`, etc.
- Quer adicionar pulos, ataques ou novas mecânicas? Expanda o sistema de estados!

## 🔧 Personalização

Você pode personalizar a engine da forma que quiser! Aqui estão algumas sugestões:

- **Troque as sprites** para combinar com seu jogo.
- **Adicione novos estados** ao jogador (ataque, dash, escalar, etc.).
- **Implemente IA para NPCs e inimigos.**
- **Crie um sistema de diálogos ou inventário.**

## 🛠 Contribuição

Quer ajudar a melhorar a Ravengate Engine? Fique à vontade para abrir **issues** e enviar **pull requests**! 

1. Faça um fork do repositório.
2. Crie um branch para sua feature (`git checkout -b minha-feature`).
3. Commit suas mudanças (`git commit -m 'Adicionando nova feature'`).
4. Envie para o GitHub (`git push origin minha-feature`).
5. Abra um Pull Request. 🚀

## 📜 Licença

Este projeto é open-source e está sob a licença **MIT**. Isso significa que você pode usá-lo e modificá-lo livremente, desde que dê os devidos créditos.

---

### 📌 Sobre o Projeto
Ravengate Engine nasceu da paixão por desenvolvimento de jogos e da vontade de criar algo que ajude outros desenvolvedores a **trazerem suas ideias à vida**. Se essa engine te ajudar de alguma forma, compartilhe seus projetos e feedbacks! 😃🎮
