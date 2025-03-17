# Passo 3: Programando o player

1. Siga as instruções do [guia](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/03.coding_the_player.html) atentando-se as modificações feitas na estrutura do projeto em nosso exercício.
2. Mova `player.gd` para `res://src/player.gd`.
3. Observe que o tutorial adicionou os comentários sobre as variáveis com uma única `#`, mude para `##` (docstring) para que o motor entenda o comentário como uma documentação da propriedade.
    > [!NOTE]
    > Ao fazer isto, o comentário aparecerá ao deixar o mouse sobre a variável no inspetor, e também numa visualização de documentação no editor de código.
4. No tutorial `screen_size` foi redefinido para o tamanho da tela no método `_ready`, quando o nó está pronto para uso, note que o mesmo comportamento pode ser obtido atribuindo `get_viewport_rect().size` diretamente na declaração da variável, e marcando ela com a anotação `@onready`.
5. Ao definir o mapa de entradas o guia escolheu usar as setas (← → ↑ ↓) para o movimento do personagem. Uma convenção dos jogos é utilizar as teclas WASD para esse comportamento.
Na aba `Input Map` de `Project Settings`, adicione os eventos correspondentes para cada tecla. Adicione também entradas de controle para jogos.
    > [!TIP]
    > Se você tiver acesso a um controle de jogo, você pode usar as teclas diretamente para esta configuração, ao invés de procurar na lista.
    > 
    > Note a diferença entre botões de d-pad e eixos do joystick. Utilize as duas opções.
6. Adicione comentários de regiões de código `#region _nome` para melhorar a legibilidade e organização do seu código.
7. Torne todas as variáveis declaradas dinamicamente (sem tipo) em variáveis tipadas, usando coerção `:=` sempre que possível ou tipagem explícita `: type` / `-> type` quando necessário.
    > [!NOTE]
    > Você também pode tipar sinais usando () parênteses após sua declaração, como o tipo dos parâmetros de entrada da função callback.

> **Próximo:**
> 
> [Passo 4: Criando o inimigo](../4/README.md)
