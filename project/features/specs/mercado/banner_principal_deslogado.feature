#language: pt
@acessarbannerprincipalsubhomedeslogado
@regressivo_all
Funcionalidade: Acessar Banner principal na sub home estando deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder acessar Banner principal na sub home
Para poder acessar produtos

@regressivo @CT0033 @passed
Cenario: Validar banner principal
Dado que o usuário esteja na sub home
Então deve vizualizar banner principal

# @regressivo @CT0034 @failed
# Cenario: Arrastar banners
# Dado que o usuário esteja na sub home
# Quando vizualizar banner principal
# E arrasto banner
# Então deve vizualizar os demais banner
