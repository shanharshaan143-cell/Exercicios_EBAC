            #language: pt

            Feature: Configurar Produto
            Como cliente da EBAC-SHOP
            Quero configurar cor, tamanho e quantidade
            Para depois inserir no carrinho

            Contexto:
            Dado que eu acessei a página do produto "Camiseta EBAC Style"

            Cenário: Seleção válida de produto
            Quando eu selecionar a cor "Azul"
            E o tamanho "M"
            E a quantidade "5"
            E clicar no botão "Comprar"
            Então o produto deve ser adicionado ao carrinho com sucesso

            Esquema do Cenário: Validar limite de quantidade
            Quando eu selecionar a cor <cor>
            E o tamanho <tamanho>
            E a quantidade <quantidade>
            Então o sistema deve exibir a <mensagem>

            Exemplos:
            | cor        | tamanho | quantidade | mensagem                                         |
            | "vermelho" | "L"     | "10"       | "Produto adicionado ao carrinho"                 |
            | "Azul"     | "S"     | "5"        | "Produto adicionado ao carrinho"                 |
            | "Laranja"  | "M"     | "15"       | "Limite permitido: apenas 10 produtos por venda" |

            Cenário: Tentar adicionar produto sem selecionar campos obrigatórios
            Quando eu selecionar apenas a cor "Vermelho"
            E clicar em "Comprar"
            Então o sistema deve exibir um alerta informando que tamanho e quantidade são obrigatórios

            Cenário: Limpar as seleções
            Dado que eu selecionei a cor "Verde", tamanho "GG" e quantidade "3"
            Quando eu clicar no botão "Limpar"
            Então os campos de cor, tamanho e quantidade devem voltar ao estado original