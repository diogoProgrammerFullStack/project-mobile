#language: pt

@plpdeslogado
@regressivo_all
Funcionalidade: Acessar PLP estando deslogado
    Eu como usuário do aplicativo do Carrefour
    Quero poder interagir com a PLP
    Para poder acessar lista de produtos

    @regressivo @CT0218 @passed
    Cenario: Acessar PLP por Stories
    Dado que o usuário esteja na sub home
    Quando clicar nos stories de Bebidas
    Então devo entrar na PLP de Bebidas

    @regressivo @CT0219 @passed
    Cenario: Acessar PLP por Corredores
    Dado que o usuario esteja nos corredores
    Quando usuario acessa o corredor "Bebidas"
    Então devo entrar na PLP de Bebidas
