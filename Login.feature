            #Language: pt

            Feature: Login
            Como cliente da EBAC-SHOP
            Quero fazer o login na plataforma
            Para visualizar meus pedidos

            Contexto:
            Dado que eu estou na página de autenticação da EBAC-SHOP

            Cenário: Login com dados válidos
            Quando preencho usuário "cliente@ebac.com"
            E preencho senha "SenhaValida123"
            E clico em "Entrar"
            Entao devo ser direcionado para a tela de checkout

            Cenário: Login com senha inválida
            Quando preencho usuário "cliente@ebac.com"
            E preencho senha "SenhaErrada"
            E clico em "Entrar"
            Entao deve exibir a mensagem "Usuário ou senha inválidos"

            Esquema do Cenário: Tentativas de login inválidas
            Quando eu digitar o usuário <usuario>
            E a senha <senha>
            Então o sistema deve exibir o resultado <resultado>

            Exemplos:
            | usuario            | senha            | resultado                                       |
            | "cliente@ebac.com" | "SenhaValida123" | "direcionar para a tela de checkout"            |
            | "cliente@ebac.com" | "SenhaErrada"    | "exibir a mensagem 'Usuário ou senha inválidos" |


