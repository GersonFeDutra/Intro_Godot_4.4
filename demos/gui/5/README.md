# Exemplo 5: Menu Principal

Neste exemplo construiremos o design de um menu de abertura de jogo para exercitar o uso de contêineres.

## Objetivos

1. Crie e salve cena com uma árvore contendo 5 nós do tipo `TextureRect`: **Logo**, **NewGame**, **Options**, **Version**, **Characters**
2. Usando os [ativos nesta pasta](./assets/), carregue a textura de cada nó respectivo:
    - `title.png` → **Logo**
    - `label_new_game.png` → **NewGame**
    - `label_options.png` → **Options**
    - `version.png` → **Version**
    - `characters.png` → **Characters**
3. Você pode tentar posicionar os nós diretamente manipulando suas margens e âncoras, mas neste exercício tomaremos uma abordagem mais dinâmica usando contêineres:
    1. Agrupe os nós **Continue**, **NewGame** e **Options** em um novo nó `VBoxContainer`. Você pode fazer isto de duas formas:
        - Crie um novo nó `VBoxContainer`, selecione e mova os nós como filho deste nó
        - Selecione os três nós segurando `shift` e botão direito do mouse (para nós consecutivos) ou com `ctrl` (se os nós estiverem em posições descontínuas), então clique com o botão direito e escolha `Reparent to New Node...`
        > [!NOTE]
        > Ao fazer isso os nós serão automaticamente colocados um embaixo do outro dentro da área do nó `VBoxContainer`
    2. Coloque o novo nó **VBoxContainer** entre **Logo** e **Version**, então selecione esses três nós e agrupe-os em um novo pai `VBoxContainer`
    3. Faça agora com que a raiz da cena seja um nó `HBoxContainer`, e nas suas configurações de âncora escolha `Full Rect`
        > [!TIP]
        > Ao configurar a cena você provavelmente começou escolheu algum outro tipo de nó, você pode mudar o seu tipo clicando com o botão direito e escolhendo a opção `Change Type...`, caso contrário, você pode fazer o mesmo processo usado no passo 6 abaixo.
    4. O posicionamento dos nós depende do tamanho dos contêineres de nó pai, por padrão os nós serão posicionados sempre no campo superior direito, você pode mudar este comportamento para o nó **VBoxContainer** que agrupa as três texturas simulando opções do menu ao selecionar este nó no inspetor, modifique a opção `Layout > Container Sizing > Vertical` para a opção `Fill`
        > Com isso, o nó irá preencher o máximo de espaço vertical do nó pai, contra os seus nós irmãos.
    5. Mova o nó `Characters` para o fim da árvore caso não esteja e adicione um novo nó pai para ele chamado `CenterContainer`.
    6. Por fim, adicione um novo nó pai como raiz da cena para dar uma margem nas bordas da tela: adicione o nó `MarginContainer` - nos presets de âncora escolha a opção `Full Rect` - Então clique com o botão direito sobre ele e escolha a opção `Make Scene Root`.
    7. Neste ponto nenhuma alteração será aparente, mas ao modificar os valores de margem em `Theme Overrides > Constants > Margin *` você verá que os elementos da tela serão deslocados nas margens esquerda, de cima, da direita e de baixo. 

### Extras

- Experimente redimensionar a tela para verificar o comportamento dos objetos da cena. Experimente com diferentes tamanhos de tela e opções em `Project Settings > General > Display > Window`. Qual seria a melhor opção para este projeto e por quê?


> **Próximo:**
> 
> [Criando um modelo (_mockup_) de design de nível.](../6/README.md)
