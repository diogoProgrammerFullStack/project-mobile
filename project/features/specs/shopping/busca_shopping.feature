#language: pt

@buscashopping
@regressivo_all
@regressivo_shopping
Funcionalidade: Busca

@regressivoShopping @regressivo @CT013 @pc13 @passed @passed_shopping
Cenário: Validar busca deslogado
Dado que estou na Subhome do Shopping
Quando aciono o campo de busca
E informo conteúdo para busca "TVs"
Então app deve apresentar resultado da busca com sugestões e departamentos

# @regressivoShopping @regressivo @CT0058 @pc14 @failed
# Cenário: Validar acionar alguma sugestão de produto da busca
# Dado que estou na Subhome do Shopping
# Quando aciono o campo de busca
# E informo conteúdo para busca "TVs"
# Quando aciono um produto das sugestões
# Então app deve abrir Página de detalhes do produto

@regressivoShopping @regressivo @CT0059 @pc15 @passed @passed_shopping
Cenário: Validar acionar algum departamento sugerido pela busca
Dado que estou na Subhome do Shopping
Quando aciono o campo de busca
E informo conteúdo para busca "TVs"
Quando aciono um departamento sugerido
Então app deve abrir Página lista de produtos

 @CT016 @pc16 @failed @funcionalidade_retirada
 Cenário: Validar busca logado
 Dado que estou na Subhome do Shopping logado "batata@uorak.com" "123@Mudar"
 Quando app deve apresentar "Últimos produtos vistos"
 E aciono o campo de busca
 E informo conteúdo para busca "smartphone"
 Então app deve apresentar resultado da busca com sugestões e departamentos
 E atualizar últimas buscas

@regressivoShopping @regressivo @CT0061 @pc17 @passed @passed_shopping
Cenário: Validar busca sem resultado
Dado que estou na Subhome do Shopping
Quando aciono o campo de busca
E informo conteúdo para busca "aaaaaaaaaa"
Então app deve apresentar tela de exceção
