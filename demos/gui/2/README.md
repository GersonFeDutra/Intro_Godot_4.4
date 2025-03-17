# Exemplo 2: Tela inicial

Posicionando elementos gráficos na tela.

## Objetivos

1. Usando os [assets na pasta](./assets/) correspondente, crie uma nova cena com a seguinte árvore de nós:
    - > **Background** de tipo `TextureRect`
        - > **Logo** de tipo `TextureRect`
        - > **Start** de tipo `TextureButton`
        - > **Copyright** de tipo `Label`
        - > **Anim** de tipo `AnimationPlayer`
2. Adicione [background.png](./assets/splash_screen/background.png) como valor da propriedade `texture` de **Background**. Você pode fazer isso de duas formas:
    - Movendo a imagem do sistema de arquivos da Godot para a propriedade `texture` aparecendo no painel `Inspector` do nó selecionado.
    - Clicando no campo vazio da variável (ou na setinha) e escolhendo a opção `Load`, em seguida, buscar o arquivo na janela de seleção de arquivos que aparece como popup.
3. Adicione [robisplash_logo.png](./assets/splash_screen/robisplash_logo.png) como textura do nó **Logo**
4. Adicione [start_normal.png](./assets/splash_screen/start_normal.png) como valor da propriedade `texture_normal` do botão **Start**:
    - A propriedade está localizada no grupo `Textures` e listada com nome `Normal` no painel `Inspector`.
5. Adicione [start_pressed.png](./assets/splash_screen/start_pressed.png) como valor da propriedade `texture_pressed` do botão **Start**:
    - A propriedade está localizada na categoria `Textures` e listada com nome `Pressed` no painel `Inspector`.
    > Se você executar a cena agora [F6] você verá que o botão irá mudar de textura quando você clicar sobre sua área.
6. Adicione um texto com seu nome e data atual no rótulo **Copyright**.
7. Posicione e redimensione os nós de modo que:
    1. **Background** ocupe toda a tela
    2. **Logo** fique localizada no centro
    3. **Start** fique logo abaixo da **Logo**
    4. **Copyright** esteja no canto mais abaixo da tela e centralizado
    > [!TIP]
    > Use âncoras para posicionar os nós mais facilmente. Os botões no painel da cena oferecem atalhos com presets para rápida configuração.
8. Usando o nó **Anim**, crie uma nova animação:
    1. Ao selecionar o reprodutor de animação, um painel no dock inferior da tela irá aparecer. Clique no botão `Animation` selecione `New...` e dê um nome para a animação que iremos criar.
    2. Crie uma nova _track_ (linha de tempo) para a propriedade `position` da **Logo**. Você pode fazer isso de duas formas:
        - Clicando na opção `Add track > Property track` - uma janela irá aparecer para selecionar o nó que queremos animar, escolha **Logo** - na janela seguinte pesquise e selecione a propriedade `position`
        - Selecione o nó **Logo** enquanto o painel de animações estiver aberto - note que as propriedades no inspetor terão um botão com ícone de chave - busque pela propriedade `Position` na categoria `Control` > grupo `Layout` > sub-grupo `Transform` - uma janela popup irá aparecer afirmando que uma nova track será criada e inserida a chave com o valor atual de `position`, clique em `Create`
            > se a opção `Reset Track` estiver selecionada, o motor irá criar uma animação adicional de nome `RESET` de um único frame que irá resetar a animação para o valor selecionado.
    3. Crie dois key-frames: um no final da animação com o valor atual e um no início com um valor de posição de forma que a logo desapareça para cima da tela:
        > Se você escolheu o último método no passo anterior um dos key-frames já foi criada ao criar a track
        - Você pode clicar sobre um ponto da linha do tempo da track e escolher a opção `Insert Key`, clicando no losango, você pode mudar o valor daquele quadro no painel `Inspector`
        - Com o painel `Animation` à mostra, selecione o nó **Logo**, mova a agulha da linha do tempo para um ponto da animação e uma vez escolhido o valor desjado da propriedade position para aquele ponto, clique na chave ao lado `position` - um ícone de losango aparecerá na timeline indicando que o quadro chave foi criado
        > [!WARNING]
        > Se você usou a opção `Reset Track`, sempre que você selecionar o nó reprodutor de animações, a animação `RESET` será executada, retornando os valores da árvore para seus valores originais quando a track foi criada.
    4. Com o painel de animações aberto na sua animação, clique no botão com ícone de rótulo (com um "a"-zinho). Esta opção `Auto-Play on load` fará com que a animação execute quando a cena for carregada no jogo.

### Extras

- Que outras elementos você pode animar na cena?
- O que acontece quando você redimensiona a tela?
    - Note que o background pode não estar preenchendo a tela como desejado. Como você poderia resolver este problema?

----

> **Próximo:**
> 
> [Usando o nó `Button`.](../3/README.md)
