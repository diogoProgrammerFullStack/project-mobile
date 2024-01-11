#language:pt
@pdpdeslogado
@regressivo_all
Funcionalidade: Acessar PLP estando deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com a PDP
Para poder acessar Detalhes de produtos

@regressivoShopping @regressivo @CT033 @passed @passed_shopping
Cenário: Validar caracteristicas PDP
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
Então app deve abrir PDP apresentando header com opção de voltar e guia de CEP Região
E deve apresentar na tela fotos do produto, título do produto, preço, condições de pagamento, botão vou levar, vendido e entregue por do produto "Celular"

@regressivoShopping @regressivo @CT034  @passed @passed_shopping
Cenário: Validar condições de pagamento
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
E aciono Condições de pagamento
Então app deve apresentar condições de pagamentos

@regressivoShopping @regressivo @CT035 @passed @passed_shopping
Cenário: Validar vendido e entregue por
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
E verifico a apresentação da label Vendido e entregue por
Então app deve apresentar Carrefour

@regressivoShopping @regressivo @CT036 @passed @passed_shopping
Cenário: Validar vendido e entregue por - Marketplace
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
E verifico a apresentação da label Vendido e entregue por
Então app deve apresentar o nome da loja em azul
E apresentar abaixo a opção O Carrefour garante a sua compra

@regressivoShopping @regressivo @CT037 @passed @passed_shopping
Cenário: Validar "O Carrefour garante a sua compra" - Marketplace
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
E clico em O Carrefour garante a sua compra
Então app deve apresentar modal com as definições, botão Entendi e opção fechar

@regressivoShopping @regressivo @CT038 @passed @passed_shopping
Cenário: Validar Vou levar - deslogado
Dado que estou na Subhome do Shopping
Quando busco por produto desejado "Celular Smartphone Xiaomi Redmi Note 11"
E clica em "Vou levar"
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoShopping @regressivo @CT039 @pcpdpshopping @passed @passed_shopping
Cenário: Validar Vou levar - logado
Dado que eu estou em uma PDP estando logado "batata@uorak.com" "123@Mudar" "Celular Smartphone Xiaomi Redmi Note 11"
Quando clica em "Vou levar"
Então app deve me direcionar ao carrinho apresentando o produto adicionado
