# Exemplo 4: Reagindo ao pressionar de um botão

Na cena anterior configuramos um painel de confirmação com um botão, que não faz nada até então. Iremos adicionar funcionalidade usando o sinal `pressed` de `Button`.

## Objetivos

1. Adicione um script ao nó **Panel**
2. Conecte o sinal `pressed` de **Button** num novo método `_on_button_pressed`. Você pode fazer isso de duas formas:
    - **No editor** mude para o painel `Node` e assegure de que a opção `Signals` está selecionada - clique duas vezes na opção `pressed` listada na categoria `BaseButton` (ou clique com o botão direito e escolha `Connect`) - na janela de conformação clique em `Ok` para criar o método no script de **Panel** a Godot irá criar o método `_on_button_pressed` automaticamente seguindo as convenções de nomenclatura
    - **No script** de **Panel** faça a conexão do sinal `pressed` no método `_ready`:
        1. Busque a instância do nó `Button` na árvore,
        2. Acesse o sinal `pressed` de **Button**
        3. Acesse o método `connect` do botão passando como parâmetro o nome do método `_on_button_pressed`
3. No novo método criado remova a palavra `pass` pela linha de código que faça o seguinte:
    1. busque a instância do nó `Label` na cena,
    2. Acesse o atributo `text` de **Label**, atribuindo um novo valor a ela.

### Extras

- Na sua opinião qual o propósito dos sinais? Quais seriam as alternativas a reagir a eventos de jogo?
- Que outros eventos você pode reagir?
- Pesquise como você pode criar seus próprios eventos? Como usar múltiplos eventos encadeados pode ser uma má prática?

> **Próximo:**
> 
> [Menu principal usando contêineres.](../5/README.md)
