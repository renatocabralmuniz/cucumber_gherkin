            #language: pt
            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Configuração válida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu selecionar o tamanho "S"
            E a cor "Orange"
            E a quantidade "5"
            Então deve exibir a mensagem "Compra efetuada com sucesso"

            Cenário: Quantidade acima de Dez
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu selecionar o tamanho "XL"
            E a cor "Red"
            E a quantidade "15"
            Então deve exibir a mensagem "Selecione no máximo 10 peças"

            Cenário: Tamanho não informado
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu selecionar o tamanho " "
            E a cor "Blue"
            E a quantidade "2"
            Então deve exibir a mensagem "Informe o tamanho do produto"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu selecionar <tamanho>
            E <cor>
            E <quantidade>
            E clicar em comprar
            Então deve exibir a <mensagem>

            Exemplos:
            | tamanho | cor      | quantidade | mensagem                          |
            | "S"     | "Orange" | "5"        | "Compra efetuada com sucesso"     |
            | "XL"    | "Red"    | "15"       | "Selecione no máximo 10 peças"    |
            | " "     | "Blue"   | "2"        | "Informe o tamanho do produto"    |
            | "M"     | " "      | "2"        | "Informe a cor do produto"        |
            | "L"     | "Red"    | " "        | "Informe a quantidade do produto" |