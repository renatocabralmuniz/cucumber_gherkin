            #language: pt

            Funcionalidade: Cadastro
            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Cenário: Cadastro válida
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu digitar o nome "Sergio"
            E a Sobrenome "Camargo Abreu"
            E pais "Brasil"
            E endereço "Rua Um, 01"
            E cidade "Rio de Janeiro"
            E cep:"24425100"
            E telefone "(21)963635521"
            E endereço de mail "sergio@ebacshop.com.br"
            E finalizar compra
            Então deve exibir a mensagem "Compra efetuada com sucesso"

            Cenário: Email inválido
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu digitar o nome "Thiago"
            E a Sobrenome "Almeida"
            E pais "Brasil"
            E endereço "Rua Dois, 02"
            E cidade "Centro"
            E cep:"24425150"
            E telefone "(21)963636631"
            E endereço de mail "thiagoebacshop.com.br"
            E finalizar compra
            Então deve exibir a mensagem "Digite um email válido"

            Cenário: Campos obrigatórios vazios
            Dado que eu acesse a página de cadastro da EBAC-SHOP
            Quando eu digitar o nome " "
            E a Sobrenome " "
            E pais "Brasil"
            E endereço "Rua Três, 03"
            E cidade " "
            E cep:"24425200"
            E telefone "(21)986865995"
            E endereço de mail " "
            E finalizar compra
            Então deve exibir a mensagem "Preencha todos os campos obrigatórios"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <nome>
            E o <sobrenome>
            E <país>
            E <endereço>
            E <cidade>
            E <cep>
            E <telefone>
            E <endereço de email>
            E finalizar compra
            Então deve exibir a <mensagem>


            Exemplos:
            | nome     | sobrenome       | pais     | endereço         | cidade             | cep        | telefone        | endereço de email             | mensagem                                                  |
            | "Sergio" | "Camargo Abreu" | "Brasil" | "Rua Um, 01"     | "Rio de Janeiro"   | "24425100" | "(21)963635521" | "sergio@ebacshop.com.br"      | "Compra efetuada com sucesso"                             |
            | "Thiago" | "Almeida"       | "Brasil" | "Rua Dois, 02"   | "Centro"           | "24425150" | "(21)963636631" | "thiagoebacshop.com.br"       | "Digite um email válido"                                  |
            | " "      | " "             | "Brasil" | "Rua Três, 03"   | " "                | "24425200" | "(21)986865995" | " "                           | "Preencha todos os campos obrigatórios"                   |
            | "Carlos" | "Silva"         | "México" | "Rua Quatro, 04" | "Cidade do México" | "55632100" | "+55985632500"  | "carlossilva@ebacshop.com.br" | "Compra efetuada com sucesso"                             |
            | "Ana"    | "Vargas"        | "Brasil" | "Rua Cinco, 05"  | "231564"           | "0"        | "(21)9636"      | "anavargas@ebacshop.com.br"   | "Digite os campos cidade, cep e telefone de forma válida" |
            | "Cintia" | " "             | " "      | "Rua Seis.06"    | " "                | " "        | "(21)986865995" | "cintia@ebacshop.com"         | "Preencha todos os campos obrigatórios"                   |