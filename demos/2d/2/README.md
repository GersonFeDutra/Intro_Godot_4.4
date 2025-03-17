# Passo 2: Criando a cena "player"

1. Siga as instruções do [guia](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/02.player_scene.html) atentando-se as modificações feitas na estrutura do projeto em nosso exercício.
2. Mova `player.tscn` para `res://src/player.tscn`
    > [!TIP]
    > A pasta `src` (source) é uma convenção responsável por separar todos os "arquivos de código fonte" como cenas e script de outros recursos do projeto.
3. Use uma colisão esférica ao invés de uma capsula.
    > [!NOTE]
    > Otimizar malhas de colisão é uma boa prática, quando a definição do objeto é simples o suficiente para o espaço.
    > 
    > Na maioria dos casos o ganho é indiferente, mas em casos mais complexos pode ser uma forma eficaz de otimização.

> **Próximo:**
> 
> [Passo 3: Programando o player](../3/README.md)
