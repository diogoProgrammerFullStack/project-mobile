#language: pt
@ofertasdasemana
@regressivo_all
Funcionalidade: Ofertas da semana

@regressivo @CT0267 @passed
Cenario: Quantidade de produtos
Dado que o usuário esteja na sub home
Quando visualizar Ofertas da semana
Então deve conter dez produtos no carrosel

@regressivo @CT0268 @passed
Cenario: Ver mais
Dado que o usuário esteja na sub home
Quando visualizar Ofertas da semana
E tocar em "Ver mais"
Então deve ser direcionado a PLP de ofertas da semana

@regressivo @CT0269 @passed
Cenario: PDP
Dado que o usuário esteja na vitrine
Quando clicar em um card de um produto
Então deve abrir a PDP

@regressivo @CT0270 @passed
Cenario: Adicionar produto atraves da vitrine estando deslogado
Dado que o usuário esteja deslogado
Quando estiver na vitrine
E adicionar um produto
Então deve abrir o modal de login
