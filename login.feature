            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu digitar o usuário "sergio@ebacshop.com.br"
            E a senha "senha@123"
            Então deve exibir a mensagem "Direcionando para checkout"

            Cenário: Usuário inexistente
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário "abcabc@ebacshop.com.br"
            E a senha "senha@123"
            Então deve exibir a mensagem "Usuário inexistente"

            Cenário: Usiário com senha inválida
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário "sergio@ebacshop.com.br"
            E a senha "jkshdjkas52"
            Então deve exibir uma mensagem de alerta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario>
            E a <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario                  | senha         | mensagem                     |
            | "sergio@ebacshop.com.br" | "senha@123"   | "Direcionando para checkout" |
            | "abcabc@ebacshop.com.br" | "senha@123"   | "Usuário inexistente"        |
            | "sergio@ebacshop.com.br" | "jkshdjkas52" | "Usuário ou senha inválidos" |