# language: pt

@acessardestaquesappdeslogado
@regressivo_all
Funcionalidade: Acessar os destaques do app deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com os destaques
Para visualizar mais opções

  @regressivoDestaque @CT0112 @passed
  Cenario: Acesso ao destaque de Minhas recompensas
    Dado que o usuario esteja deslogado no app
    Quando acessa o destaque do "Minhas Recompensas"
    Então exibe modal Cadastre-se ou acesse sua conta

  # @regressivoDestaque @CT0114 @failed
  # Cenario: Acesso ao destaque de Scan&Go
  #   Dado que o usuario esteja deslogado no app
  #   Quando acessa o destaque do "Scan&Go"
  #   Então exibe modal Cadastre-se ou acesse sua conta

  # @regressivoDestaque @CT0115 @failed
  # Cenario: Acesso ao destaque de Serviços
  #   Dado que o usuario esteja deslogado no app
  #   E navega pelos destaques ate "Serviços"
  #   Quando acessa o destaque do "Serviços"
  #   Então será direcionado para Serviços

  # @regressivoDestaque @CT0116 @failed
  # Cenario: Acesso ao destaque de Cupons
  #   Dado que o usuario esteja deslogado no app
  #   E navega pelos destaques ate "Cupons"
  #   Quando acessa o destaque do "Cupons"
  #   Então exibe modal Cadastre-se ou acesse sua conta

  @regressivoDestaque @CT0117 @passed
  Cenario: Acesso ao destaque de Meus Pedidos
    Dado que o usuario esteja deslogado no app
    E navega pelos destaques ate "Meus Pedidos"
    Quando acessa o destaque do "Meus Pedidos"
    Então exibe modal Cadastre-se ou acesse sua conta

  @regressivoDestaque @CT0118 @passed
  Cenario: Acesso ao destaque de Folhetos
    Dado que o usuario esteja deslogado no app
    E navega pelos destaques ate "Folhetos"
    Quando acessa o destaque do "Folhetos"
    Então será direcionado para tela Selecione loja

  @regressivoDestaque @CT0119 @passed
  Cenario: Acesso ao destaque de Ofertas da Loja
    Dado que o usuario esteja deslogado no app
    E navega pelos destaques ate "Ofertas da loja"
    Quando acessa o destaque do "Ofertas da loja"
    Então será direcionado para tela Selecione loja

  # @regressivoDestaque @CT0120 @failed
  # Cenario: Acesso ao destaque de Consulta de preços
  #   Dado que o usuario esteja deslogado no app
  #   E navega pelos destaques ate "Consulta de preços"
  #   Quando acessa o destaque do "Consulta de preços"
  #   E toca em Começar
  #   Então será direcionado para tela Selecione loja

  @regressivoDestaque @CT0121 @passed
  Cenario: Acesso ao destaque de CyberCook
    Dado que o usuario esteja deslogado no app
    E navega pelos destaques ate "CyberCook"
    Quando acessa o destaque do "CyberCook"
    Então será direcionado para tela CyberCook
