#language: pt

@acessardestaquesdoapp
@regressivo_all
Funcionalidade: Acessar Destaques do App
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com os destaques
Para visualizar mais opções

Contexto:
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"

@regressivo @CT0101 @passed
Cenario: Acesso ao Minhas Recompensas logado
Quando acessa o destaque do "Minhas Recompensas"
Então será direcionado para tela minhas recompensas

@regressivo @CT0103 @failed
Cenario: Acesso ao Scan&Go logado
Quando acessa o destaque do centro "Scan&Go"
Então será direcionado para tela Conheça o Scan&Go

@regressivo @CT0104 @failed
Cenario: Acesso ao Serviços logado
Quando acessa o destaque do centro "Serviços"
Então será direcionado para Serviços

@regressivo @CT0105  @failed
Cenario: Acesso ao Cupons logado
Quando acessa o destaque do centro "Cupons Exclusivos"
Então será direcionada para Cupons exclusivos

@regressivo @CT0106 @passed
Cenario: Acesso ao Meus Pedidos logado
E navega pelos destaques ate "Meus Pedidos"
Quando acessa o destaque do "Meus Pedidos"
Então será direcionado para tela Meus pedidos e compras

@regressivo @CT0107 @passed
Cenario: Acesso ao Folhetos logado
E navega pelos destaques ate "Folhetos"
Quando acessa o destaque do "Folhetos"
Então será direcionado para tela Selecione loja

@regressivo @CT0108 @passed
Cenario: Acesso ao Ofertas da Loja logado
E navega pelos destaques ate "Ofertas da loja"
Quando acessa o destaque do "Ofertas da loja"
Então será direcionado para tela Selecione loja

# @regressivo @CT0109 @failed
# Cenario: Acesso ao Consulta de preços logado
# E navega pelos destaques ate "Consulta de preços"
# Quando acessa o destaque do "Consulta de preços"
# E toca em "Começar"
# Então será direcionado para tela Selecione loja

@regressivo @CT0110 @passed
Cenario: Acesso ao CyberCook logado
E navega pelos destaques ate "CyberCook"
Quando acessa o destaque do "CyberCook"
Então será direcionado para tela CyberCook
