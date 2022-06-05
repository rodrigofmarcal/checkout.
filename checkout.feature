            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da Ebac-Shop
            Quero fazer concluir meu cadastro
            Para finalizar minha compra

            Contexto: Dado que eu acesse a pagina de checkout da Ebac-Shop
            
            Cenário: Checkout válido
            Quando eu digitar "nome", "sobrenome", "pais","endereco", "cidade", "CEP", "telefone" e "email"
            E clicar no botão de finalizar compra
            Então deve ser exibida uma mensagem "compra finalizada"

            Cenário: Checkout com email em formato inválido
            Quando eu digitar email "rodrigo.com.br"
            E clicar no botão de finalizar compra
            Então deve ser exibida uma mensagem de alerta "email em formato inválido"

            Esquema do Cenário: multiplos Checkout
            Quando eu digitar <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <CEP>, <telefone> e <email>
            E clicar no botão finalizar compra
            Então deve ser exibida uma <mensagem>

            Exemplos:
            | nome    | sobrenome     | país     | endereço   | CEP       | telefone        | email          | mensagem                         |
            | "Rodrigo" | "Marçal"    | "Brasil" | "rua 1"    | "33000"   | "(31)999999999" | "rodrigo@Ebac" | "compra finalizada com sucesso"                |
            | "       " | "Marçal"    | "Brasil" | "rua 1"    | "33000"   | "(31)999999999" | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "      "    | "Brasil" | "rua 1"    | "33000"   | "(31)999999999" | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "Marçal"    | "      " | "rua 1"    | "33000"   | "(31)999999999" | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "Marçal"    | "Brasil" | "     "    | "33000"   | "(31)999999999" | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "Marçal"    | "Brasil" | "rua 1"    | "     "   | "(31)999999999" | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "Marçal"    | "Brasil" | "rua 1"    | "33000"   | "             " | "rodrigo@Ebac" | "campo(s) obrigatório(s) vazio(s)" |
            | "Rodrigo" | "Marçal"    | "Brasil" | "rua 1"    | "33000"   | "(31)999999999" | "            " | "campo(s) obrigatório(s) vazio(s)" |
            