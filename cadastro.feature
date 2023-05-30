            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro válida
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu preencho todos os campos de forma adequada
            E finalizo a compra
            Então deve exibir a mensagem "Compra efetuada com sucesso"

            Cenário: Email inválido
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu preencher o email de forma inválida
            E finalizar compra
            Então deve exibir a mensagem "Digite um email válido"

            Cenário: Campos obrigatórios não preenchidos
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu não preencher um campo obrigatório
            E finalizar compra
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu preencher os campos <nome>, <sobrenome>, <país>, <endereço>, <cidade>, <cep>, <telefone>, <endereço de email>, finalizar compra
            Então deve exibir a <mensagem>


            Exemplos:
            | nome     | sobrenome       | pais     | endereço         | cidade             | cep        | telefone        | endereço de email             | mensagem                                                  |
            | "Sergio" | "Camargo Abreu" | "Brasil" | "Rua Um, 01"     | "Rio de Janeiro"   | "24425100" | "(21)963635521" | "sergio@ebacshop.com.br"      | "Compra efetuada com sucesso"                             |
            | "Thiago" | "Almeida"       | "Brasil" | "Rua Dois, 02"   | "Centro"           | "24425150" | "(21)963636631" | "thiagoebacshop.com.br"       | "Digite um email válido"                                  |
            | " "      | " "             | "Brasil" | "Rua Três, 03"   | " "                | "24425200" | "(21)986865995" | " "                           | "Preencha todos os campos obrigatórios"                   |
               |