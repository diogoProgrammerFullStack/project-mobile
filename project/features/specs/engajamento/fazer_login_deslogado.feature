#language: pt
@regressivo_all
Funcionalidade: Acessar Últimos pedidos na sub home estando deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com últimos pedidos na sub home
Para poder fazer login

@regressivo @CT0139 @passed
Cenario: Fazer login por últimos pedidos
Dado que o usuario esteja deslogado no app
Quando acessa Mercado
E clica em Fazer login
Então deve vizualizar a tela Cadastre-se ou acesse sua conta
