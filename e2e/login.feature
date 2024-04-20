#language: pt

Funcionalidade: Login do saucedemo
    Descrição: aqui testamos apenas a tela de login

Contexto:
        Dado que acesso o site "https://www.saucedemo.com/v1/"

Cenário: Login válido
    Quando eu informo o usuário válido "standard_user"
    E a digito a senha "secret_sauce"
    E confirmo
    Então exibe "Products"

Esquema do Cenário: Falhas no login
    Quando eu informo o <usuario>
    E a digito a <senha>
    E confirmo
    Então exibe a <mensagem> de erro
    Exemplos:
    | usuario           | senha         | mensagem |
    | "invalid_user"    | "secret_sauce"| "Epic sadface: Username and password do not match any user in this service" |
    | "standard_user"   | "invalid_pwd" | "Epic sadface: Username and password do not match any user in this service" |
    | "locked_out_user" | "secret_sauce"| "Epic sadface: Sorry, this user has been locked out." |
    | ""                | "senha"       | "Epic sadface: Username is required" |
    | "usuario"         | ""            | "Epic sadface: Password is required" |
    | ""                | ""            | "Epic sadface: Username is required" |

#Esquema do Cenário: Falhas no login ->
#Cenário: Login com usuário inválido
#Cenário: Login com senha inválida inválida
#Cenário: Login com usuário bloqueado
#Cenário: Login de usuário com campos vazios
#Cenário: Login de usuário com usuário válido e senha vazia
#Cenário: Login de usuário com usuário vazio e senha válida




