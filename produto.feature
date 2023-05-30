            #language: pt
            Funcionalidade: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar meu produto de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho

            Cenário: Configuração válida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu selecionar tamanho, cor e quantidade
            Então deve exibir a mensagem "Compra efetuada com sucesso"

            Cenário: Quantidade acima do limite
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu não selecionar um campo obrigatório
            Então deve exibir a mensagem "Preencha todos os campos obnrigatórios"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu selecionar <tamanho>, <cor>, <quantidade>
            E clicar em comprar
            Então deve exibir a <mensagem>

            Exemplos:
            | tamanho | cor      | quantidade | mensagem                          |
            | "S"     | "Orange" | "5"        | "Compra efetuada com sucesso"     |
            | "XL"    | "Red"    | "15"       | "Preencha todos os campos obnrigatórios"   |
            | " "     | "Blue"   | "2"        | "Preencha todos os campos obnrigatórios"   |
     