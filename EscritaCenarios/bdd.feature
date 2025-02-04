# Compomentes do BDD: Funcionalidades, Cenários e Passos.
#Sintaxe Gherkin

# Dado: O contexto ou estado inicial.
# Quando: A ação ou evento que ocorre.
# Então: O resultado ou comportamento esperado.

Funcionalidade: Login no site Saucedemo

Cenario: Login com credenciais válidas 
    Dado que o usuário acessa a página de login do site Saucedemo
    E insere um Username válido 
    E insere um Password válido 
    Quando o usuário clicar no botão de login 
    Então o usuário deve ser redirecionado para a página de inventário 
    E a URL deve conter "/inventory.html".
    Exemplos: 
    | standard_user |
    | secret_sauce |

Cenario: Login com senha incorreta 
    Dado que o usuário acessa a página de login do site Saucedemo
    E insere um Username válido
    E insere um Password inválido
    Quando o usuário clicar no botão de login 
    Entao o usuário deve ver uma mensagem de erro
    E o usuário permanece na página de login

Cenario: Login com campo senha vazio
    Dado que o usuário acessa a página de login do site Saucedemo
    E o usuário insere o nome de usuário "standard_user"
    E o usuário deixa o campo senha vazio 
    Quando o usuário clicar no botão de login
    Então o usuário deve ver uma mensagem de erro "Epic sadface: Password is required"
    E o usuário permanece na página de login

Cenario: Login com o campo nome vazio 
    Dado que o usuário acessa a página de login do site Saucedemo
    E o usuário deixa o campo nome de usuário vazio 
    E o usuário insere a senha
    Quando o usuário clicar no botão de login
     Então o usuário deve ver uma mensagem de erro "Epic sadface: Username is required"
    E o usuário permanece na página de login

Cenario: Login com os campos nome e senha vazios 
    Dado que o usuário acessa a página de login do site Saucedemo
    E o usuário deixa o campo nome de usuário vazio 
    E o usuário deixa o campo de senha vazio 
    Quando o usuário clicar no botão de login
    Então o usuário deve ver uma mensagem de erro "Epic sadface: Username is required"
    E o usuário permanece na página de login  


