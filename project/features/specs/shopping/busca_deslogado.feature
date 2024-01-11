#language: pt

@buscadeslogado
@regressivo_all
@regressivo_shopping
Funcionalidade: Busca deslogado

Eu como usuário do aplicativo do Carrefour
Quero poder realizar busca
Para visualizar produtos

@regressivo @CT0055 @PC006 @passed @passed_shopping
Cenario: Vizualizar "Buscar produtos e marcas" na sub home 
Dado que o usuario esteja deslogado no app
Quando acessa Mercado
Então deve visualizar "Buscar produtos e marcas"

@regressivo @CT0056 @PC007 @passed @passed_shopping
Cenario: Buscar produtos e marcas  - Buscar por produto 
Dado que o usuario esteja deslogado no app
Quando acessa Mercado
E busco por "Refrigerante Coca-Cola Garrafa 2 L"
Então deve visualizar PLP desse produto "Refrigerante Coca-Cola Garrafa 2 L"
