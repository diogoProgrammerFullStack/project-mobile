#language: pt
@regressivo_all
Funcionalidade: Acessar header de carrinho na sub home estando deslogado
    Eu como usuário do aplicativo do Carrefour
    Quero poder interagir com header de carrinho na sub home
    Para poder visualizar o carrinho

    @regressivo @CT0080 @passed
    Cenario: Cenário de carrinho - V0
    Dado que o usuário esteja na sub home
    Quando clicar em carrinho
    Então deve solicitar login
