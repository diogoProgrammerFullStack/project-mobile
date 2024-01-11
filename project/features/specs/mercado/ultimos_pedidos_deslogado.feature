#language: pt
@regressivo_all
Funcionalidade: Acessar Últimos pedidos na sub home estando deslogado
    Eu como usuário do aplicativo do Carrefour
    Quero poder acessar os últimos pedidos na sub home
    Para poder acessar meus últimos pedidos 

    @regressivo @CT0244 @passed
    Cenario: Vizualizar Últimos pedidos
    Dado que o usuario esteja deslogado no app
    Quando acessar Mercado
    Então deve visualizar Para visualizar seus últimos pedidos faça login com a sua conta.
