#language: pt
@pcplp
@regressivo_all
Funcionalidade: Acessar PLP shopping
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com a PLP
Para poder acessar lista de produtos

@regressivoShopping @regressivo @CT028 @passed @passed_shopping
Cenário: Validar acesso a PLP
Dado que estou na Subhome do Shopping
Quando aciono uma PLP de "Smartphones"
Então app deve apresentar lista de produtos de acordo com a categoria selecionada "Smartphones"
E apresentar busca, carrinho, guia de CEP Região e total de resultado no header
E apresentar opção de filtro

@CT029 @failed @funcionalidade_retirada
Cenário: Validar acesso a PLP - Produtos patrocinados
Dado que estou na Subhome do Shopping
Quando aciono Ver Mais na Vitrine de produtos patrocinados
Então app deve apresentar lista de produtos patrocinados
E apresentar busca, carrinho, guia de CEP Região e total de resultado no header

@regressivoShopping @regressivo @CT030 @passed @passed_shopping
Cenário: Validar Filtro PLP - Fechar
Dado que estou na Subhome do Shopping
Quando aciono uma PLP de "Smartphones"
E aciono opção Filtrar
Então app deve apresentar opções de filtro por caracteristicas "Filtrar por" e ordenação "Ordenar por"
Dado que aciono opção de fechar
Então app deve fechar botton sheet de filtro e apresentar PLP sem alteração

@regressivoShopping @regressivo @CT031 @passed @passed_shopping
Cenário: Validar Filtro PLP - Limpar Filtro
Dado que estou na Subhome do Shopping
Quando aciono uma PLP de "Smartphones"
E aciono opção Filtrar
Então app deve apresentar opções de filtro por caracteristicas "Filtrar por" e ordenação "Ordenar por"

@regressivoShopping @regressivo @CT032 @passed @passed_shopping
Cenário: Validar Filtro PLP - Aplicar Filtro
Dado que estou na Subhome do Shopping
Quando aciono uma PLP de "Smartphones"
E aciono opção Filtrar
E seleciono algum filtro
Então atualizar contador de filtro apresentado ao no botão Filtrar
