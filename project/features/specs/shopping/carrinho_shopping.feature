# language: pt

@carrinho2
@regressivo_all
@regressivo_shopping
Funcionalidade: Carrinho
    Acessos ao carrinho:
    Subhome shopping;
    PLPs

  # @regressivoShopping @regressivo @CT0082 @failed
  # Cenário: Validar acesso ao carrinho - deslogado
  #   Dado que estou na Subhome do Shopping deslogado
  #   Quando eu aciono o icone do carrinho
  #   Então app deve apresentar modal de login

  # @regressivoShopping @regressivo @CT0083 @failed
  # Cenário: Validar acesso ao carrinho - logado
  #   Dado que estou na Subhome do Shopping logado "batata@uorak.com" "123@Mudar"
  #   Quando eu aciono o icone do carrinho
  #   Então app deve direcionar para fluxo de carrinho apresentando produtos, caso exista

  # @regressivoShopping @regressivo @CT0084  @failed
  # Cenário: Validar contador do carrinho
  #   Dado que estou na Subhome do Shopping logado "batata@uorak.com" "123@Mudar"
  #   Quando eu verifico o contador de produtos no carrinho
  #   Então app deve sempre atualizar, na adição ou exclusão de produtos do carrinho
