#language: pt

@acessarhomelogada
@regressivo_all
Funcionalidade: Acessar home logada

Eu como usuário do aplicativo do Carrefour
Quero poder interagir com com a home
Para visualizar todas opções do app

Contexto:
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"

@regressivo @CT0140 @passed
Cenario: Acesso aos Banners Horizontais da Home logado
Dado que usuário esteja na Home
Quando acionado banner horizontal desejado
Então app apresentará tela correspondente a banner acionado (banner e funcionalidade parametrizáveis)

@regressivo @CT0141 @passed
Cenario: Acesso ao Mercado Online da Home logado
Quando acessar Mercado Online logado
Então será direcionado para o Mercado

@regressivo @CT0142 @passed
Cenario: Acesso aos Benefícios Meu Carrefour da Home logado
Quando acessar Benefícios Meu Carrefour
Então dever ser apresenta Benefícios Meu Carrefour

@regressivo @CT0143 @passed
Cenario: Acesso as Minhas Recompensas da Home logado
Quando acessar Minhas Recompensas
Então será direcionado para Minhas Recompensas

@regressivo @CT0144 @passed
Cenario: Acesso aos Cupons da Home logado
Quando acessar Cupons
Então será direcionada para Cupons exclusivos

@regressivo @CT007 @passed
Cenario: Acesso ao Meu Cartão Carrefour da Home logado
Quando acessar Cartão
Então será direcionado para app do Cartão de cédito Carrefour

@regressivo @CT0145 @passed
Cenario: Acesso Para você usar da Home logado
Quando navego até Para você usar
Então deve visualizar na loja, em casa ou onde estiver

@regressivo @CT0146 @passed
Cenario: Acesso a Central de atendimento da Home logado
Quando acessar Perguntas frequentes
Então será direcionado para Central de Atendimento

@regressivo @CT0147 @passed
Cenario: Acesso a Fale com a Carina da Home por whatsapp logado
Quando acessar Fale com a Carina
Então será direcionado para whatsapp

@regressivo @CT0148 @passed
Cenario: Acesso a Fale com a Carina da Home logado
Quando acessar Chat
Então será direcionado para tela Fale conosco
