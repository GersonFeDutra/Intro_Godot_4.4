# Passo 6: Heads-up display

1. Siga as instruções do [guia](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/06.heads_up_display.html) atentando-se as modificações feitas na estrutura do projeto em nosso exercício.
2. Ainda no editor da Godot, mova as cenas e scripts do inimigo e personagem para uma nova pasta `res://src/characters`.
    > [!NOTE]
    > Conforme o projeto vai crescendo é muito comum refatorar a estrutura do projeto para aprimorar a organização.
    > <br> A Godot vai fazer o máximo para manter a vinculação entre as dependências da cena, assim as referências não irão quebrar quando algo for alterado.
    > 
    > Escolha sempre bons nomes, e deixe elementos relacionados próximos entre si.

## Desafios

1. Durante a configuração dos controles da nossa HUD, utilizamos múltiplas vezes o `Theme Override` para configurar a fonte. Faça com que estas configurações se tornem o padrão para todos os controles do jogo, sem usar esta opção diretamente.
2. Durante todo o código foi usado o `$` (método `get_node`) para obter as instâncias dos nós na cena. Por quê isso não é uma boa prática? Modifique o código para corrigir este code smell.

------

> **Próximo:**
> 
> [Passo 7: Finalizando!](../7/README.md)
