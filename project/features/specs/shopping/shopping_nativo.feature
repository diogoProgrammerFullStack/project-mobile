# language: pt
@shoppingnativocheckout
@regressivo_all
Funcionalidade: Shopping Nativo - Checkout

  Contexto:
    Dado que estou na Subhome do Shopping logado "batata@uorak.com" "123@Mudar"

  @regressivoShopping @regressivo @CT0220 @passed @passed_shopping
  Cenário: Validar adição de item no carrinho - "Vou levar"
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    Então app deve prosseguir para o carrinho
    E apresentar o produto adicionado

  @regressivoShopping @regressivo @CT0221 @passed @passed_shopping
  Cenário: Validar adição de item no carrinho - "Vou levar"
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    Então deve recalcular o valor total

  @regressivoShopping @regressivo @CT0222 @passed @passed_shopping
  Cenário: Validar reduzir quantidade produtos já existente no carrinho
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E retiro um item do carrinho
    Então deve recalcular o valor total

  @regressivoShopping @regressivo @CT0223 @passed @passed_shopping
  Cenário: Validar esvaziar carrinho
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E esvazio o carrinho
    Então app deve remover todos os produtos do carrinho
    E atualizar a tela exibindo mensagem Seu carrinho esta vazio

  @regressivoShopping @regressivo @CT0224 @passed @passed_shopping
  Cenário: Validar opção "Continuar comprando"
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    Quando aciono opção Continuar comprando
    Então app deve voltar para tela onde o fluxo foi acionado

  @regressivoShopping @regressivo @CT0226 @passed @passed_shopping
  Cenário: Validar "Finalizar a compra" - Pagamento
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E aciono opção Finalizar a compra
    Então app deve avançar para aba de pagamento

  @regressivoShopping @regressivo @CT0227 @passed @passed_shopping
  Cenário: Validar formas de pagamento
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E aciono opção Finalizar a compra
    Então verifico as formas de pagamento na tela
    |pays             |
    |Cartão de crédito|
    |Cartão Carrefour |
    |Pix              |

  @CT0228 @failed
  Cenário: Validar "Editar" Dados pessoais
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E aciono opção Finalizar a compra
    Quando aciono opção Editar na seção dados pessoais com email "batata@uorak.com" "123@Mudar"
    Então app deve prosseguir para o carrinho

  @CT0229 @failed
  Cenário: Validar "Editar" Dados entrega
    Dado que estou na Subhome do Shopping
    Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
    E verifico a apresentação da label Vendido e entregue por
    E adiciono um produto no carrinho acionando "Vou levar"
    E aciono opção Finalizar a compra
    E aciono opção de editar dados da entrega com email "batata@uorak.com" "123@Mudar"
    Então app deve prosseguir para o carrinho
