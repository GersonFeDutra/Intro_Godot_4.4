# Passo 4: Criando o inimigo

1. Siga as instruções do [guia](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/04.creating_the_enemy.html) atentando-se as modificações feitas na estrutura do projeto em nosso exercício.
2. Mova `enemy.tscn` e `enemy.gd` para `res://src/`.
3. Na janela `Project Settings` na aba `General` em `Layer Names > 2D Physics` adicione o nome `Enemy` como valor da `Layer 1`.
    > [!TIP]
    > Nomear as camadas de colisão facilita a organização e entendimento das interações com as máscaras.
4. Faça com que a colisão do inimigo seja menor do que o tamanho do seu sprite. Isso dará uma margem maior para erro do jogador, fazendo o jogo ser mais "justo".
    > [!NOTE]
    > Tornar a experiência menos precisa torna a experiência do jogo mais agradável.
    > 
    > Jogos muitas vezes não são simulações realistas, pois a realidade é muitas vezes inconveniente.


## Desafio

- Você deve ter notado que a máscara de colisão se encaixa de formas diferentes para cada inimigo, e também para cada momento da animação. Como você poderia fazer com que ela se adapte a cada caso de forma mais precisa?
<br> Tente reutilizar a estrutura da cena com o mínimo de duplicações.

----

> **Próximo:**
> 
> [Passo 5: A cena principal](../5/README.md)
