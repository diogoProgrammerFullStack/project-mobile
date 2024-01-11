#language: pt
@barranavegacaologado
@regressivo_all
Funcionalidade: Barra de navegação logado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com a barra de navegação
Para visualizar mais opções

Contexto:
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"

@regressivo @CT0041 @passed
Cenario: Acessar Leitor logado
Quando acessa Leitor
Então será direcionado para Selecione uma loja

@regressivo @CT0042 @passed
Cenario: Acessar Perfil logado
Quando acessa Perfil
Então será direcionado para Meu perfil

@regressivo @CT0043 @passed
Cenario: Acessar opção Tudo logado
Quando acessa Tudo
Então exibe modal Encontre tudo aqui

@regressivoDeslogado @CT0045 @passed
Cenario: Acesso as Minhas recompensas
E acessa Tudo
Quando tocar em "Minhas Recompensas"
Então será direcionado para Minhas Recompensas

@regressivoDeslogado @CT0047 @passed
Cenario: Acesso ao Scan&Go
E acessa Tudo
Quando tocar em "Scan&Go"
Então será direcionado para Scan&Go

@regressivoDeslogado @CT0048 @passed
Cenario: Acesso aos Serviços
E acessa Tudo
Quando tocar em "Serviços"
Então será direcionado para Serviços

 @regressivoDeslogado @CT0049 @passed
 Cenario: Acesso aos Cupons
 E acessa Tudo
 Quando tocar em "Cupons Exclusivos"
 Então será direcionada para Cupons exclusivos

@regressivoDeslogado @CT0050 @passed
Cenario: Acesso aos Meus Pedidos
E acessa Tudo
Quando tocar em "Meus Pedidos"
Então será direcionado para tela Meus pedidos e compras

@regressivoDeslogado @CT0051 @passed
Cenario: Acesso aos Folhetos
E acessa Tudo
Quando tocar em "Folhetos"
Então será direcionado para tela Selecione loja

@regressivoDeslogado @CT0052 @passed
Cenario: Acesso a Ofertas da Loja
E acessa Tudo
Quando tocar em "Ofertas da Loja"
Então será direcionado para tela Selecione loja

# @regressivoDeslogado @CT0053 @failed
# Cenario: Acesso a Consulta de preços
# E acessa Tudo
# Quando tocar em "Consulta de preços"
# E toca em "Começar"
# Então será direcionado para tela Selecione loja

@regressivoDeslogado @CT0054 @passed
Cenario: Acesso ao CyberCook
E acessa Tudo
Quando tocar em "CyberCook"
Então será direcionado para tela CyberCook
