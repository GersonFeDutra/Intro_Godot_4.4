# Passo 1: Configurando o projeto


1. Siga as instruções do [guia](https://docs.godotengine.org/en/stable/getting_started/first_2d_game/01.project_setup.html) para criar um novo projeto na Godot.
2. Na Godot, mova as pastas `art` e `fonts` para uma nova pasta `assets` - esta é uma organização alternativa de projeto.
3. Mova todos os sprites do inimigo para `art/enemy`.
4. Renomeie os sprites para remover a redundância: de `enemy(\1).png` para `\1.png`. Por Exemplo: `enemyFlyingAlt_1` ⇾ `FlyingAlt_1`.
    - Você pode fazer isso no **bash** do linux com:
        ```bash
        prefix=enemy
        # em res://assets/art/enemy
        for file in $prefix*.png; do
            mv "$file" "${file#$prefix}"
        done
        ```
    - e no powershell:
        ```powershell
        $prefix = "enemy"
        # em res://assets/art/enemy
        Get-ChildItem -Path ".\" -File | 
        ForEach-Object {
            $newName = $_.Name -replace "^$prefix", ""  
            Rename-Item $_.FullName -NewName $newName
        }
        ```
5. Mova todos os sprites do jogador para uma nova pasta player, e repita o processo do passo anterior (reuse os scripts acima trocando a variável `prefix` de "enemy" para `player`)
7. Renomeie a pasta `art` para `sprites`
8. Mova os arquivos de áudio para uma nova pasta em `res://assets/audio`
9. Você também pode adicionar uma cor individual para as pastas no sistema de arquivos embutido da Godot. Basta clicar com o botão direito e escolher uma predefinição em `Set folder color`.
> [!NOTE]
> Esse tipo de organização de projeto permite você encontrar arquivos mais facilmente.
> 
> Embora pareça extra-engenhoso em projetos pequenos como este, exercitará boas práticas de organização que facilitarão bastante em projetos futuros maiores.

> **Próximo:**
> 
> [Passo 2: Criando a cena "player"](../2/README.md)
