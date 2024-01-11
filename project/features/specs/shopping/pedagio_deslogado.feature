#language: pt

@pedagiodeslogado
@regressivo_all
Funcionalidade: Acessar header de pedágio na sub home estando deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com header de pedágio na sub home
Para poder inserir cep

@regressivo @CT0209 @PC008 @passed @passed_shopping
Cenario: Vizualizar pedágio na sub home
Dado que o usuario esteja deslogado no app
Quando acessa Mercado
Então deve visualizar "Retirar em:"

@regressivo @CT0210 @PC009 @passed @passed_shopping
Cenario: Pedágio - Tela "Qual o seu cep?"
Dado que o usuario esteja deslogado no app
Quando acessa Mercado
E clica em "Retirar em:"
E clica em Receba em Casa
Então deve visualizar "Adicione seu CEP"

@regressivo @CT0211 @PC010 @passed @passed_shopping
Cenario: Pedágio - Inserir Cep
Dado que o usuario esteja na tela Qual o seu cep?
Quando inserir o cep 06226070
E clica em "BUSCAR"
Então deve visualizar "06226-070"
