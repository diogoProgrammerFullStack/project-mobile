#language: pt
@pedagiocep
@regressivo_all
Funcionalidade: Pedágio de CEP

@pc245 @CT0206 @passed @passed_shopping
Cenário: Validar pedágio de CEP - Não informado
  Dado que estou na Subhome do Shopping
  #Quando eu não informar CEP 
  Então na guia de CEP apresentar São Paulo ao invés do CEP
  
@pc246 @CT0207 @passed @passed_shopping
Cenário: Validar pedágio de CEP - Informando CEP
  Dado que estou na Subhome do Shopping
  Quando eu informar CEP
  Então app deve aplicar CEP informado na guia de CEP
  
@pc247 @CT0208 @passed @passed_shopping
Cenário: Validar pedágio de CEP - Não sei meu CEP
  Dado que estou na Subhome Shopping
  Quando apresentado pedágio de CEP
  E clico em Não sei meu CEP
  Então app deve apresentar webview do Correios

@pedagiotesteApresentacaoteste @passed @passed_shopping
Cenário: Validar input e get de cep
    Dado que usuário esteja na Home
    Quando acessar Mercado Online confirmando maioridade
    E informar um cep válido
    Então o app deve redirecionar para Subhome do Mercado exibindo cep informado anteriormente "06472005"