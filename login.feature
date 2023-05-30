            #language: pt

            Funcionalidade: Tela de login
            Como cliente da EBAC-SHOP
            Quero fazer o login (autenticação) na plataforma
            Para visualizar meus pedidos

            Cenário: Autenticação válida
            Dado que eu acesse a página de autenticação da EBAC-SHOP
            Quando eu digitar o usuário e senha
            Então deve exibir a mensagem "Direcionando para checkout"

            Cenário: Usuário inexistente
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar o usuário inexistente
            Então deve exibir a mensagem "Usuário inexistente"

            Cenário: Usuário com senha inválida
            Dado que eu acesse a página de autenticação do portal EBAC
            Quando eu digitar a senha de forma incorreta
            Então deve exibir uma mensagem de alerta: "Senha inválida"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu preencher os campos: <usuario> e <senha>
            Então deve exibir a <mensagem>

            Exemplos:
            | usuario                  | senha         | mensagem                     |
            | "sergio@ebacshop.com.br" | "senha@123"   | "Direcionando para checkout" |
            | "abcabc@ebacshop.com.br" | "senha@123"   | "Usuário inexistente"        |
            | "sergio@ebacshop.com.br" | "jkshdjkas52" | "Senha inválida"" |