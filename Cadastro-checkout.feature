#Language: pt

            Feature: Cadastro de cliente para finalizar compra
            Como cliente da EBAC-SHOP
            Quero concluir meu cadastro
            Para finalizar minha compra

            Contexto:
            Dado que eu estou na tela de checkout/cadastro

            Cenário: Cadastro com sucesso
            Quando eu preencher todos os campos obrigatórios marcados com asteriscos
            E clicar em "Finalizar Cadastro"
            Então o sistema deve concluir meu cadastro e permitir a finalização da compra

            Esquema do Cenário: Validação de formato de e-mail
            Quando eu preencher o campo e-mail com <email_digitado>
            Então o sistema deve exibir a <mensagem> de erro de formato

            Exemplos:
            | email_digitado         | mensagem                      |
            | "email_sem_arroba.com" | "E-mail com formato inválido" |
            | "joao@site"            | "E-mail com formato inválido" |
            | "@teste.com"           | "E-mail com formato inválido" |

            Cenário: Campos vazios no cadastro
            Quando eu tentar finalizar o cadastro deixando campos obrigatórios em branco
            Então o sistema deve exibir uma mensagem de alerta informando a obrigatoriedade dos campos