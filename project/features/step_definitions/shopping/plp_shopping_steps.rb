Quando("aciono uma PLP de {string}") do |plp|
  @screen.call(PlpShoppingScreen).acessa_plp(plp)
end

Entao("app deve apresentar lista de produtos de acordo com a categoria selecionada {string}") do |plp|
  @screen.call(PlpShoppingScreen).valida_lista_produto(plp)
end

E("apresentar busca, carrinho, guia de CEP Região e total de resultado no header") do
  @screen.call(PlpShoppingScreen).valida_tela_plp
end

Quando("aciono Ver Mais na Vitrine de produtos patrocinados") do
  @screen.call(PlpShoppingScreen).acessa_ver_mais_patrocinados
end

Quando('aciono aplicar filtro') do
  @screen.call(PlpShoppingScreen).seleciona_filtro
end

Entao("app deve apresentar lista de produtos patrocinados") do
  @screen.call(PlpShoppingScreen).valida_tela_produtos_patrocinados
end

E("apresentar opção de filtro") do
  @screen.call(PlpShoppingScreen).valida_btn_filtro
end

E("aciono opção {string}") do |opcao|
  @screen.call(PlpShoppingScreen).acionar_opcao(opcao)
end

Entao("app deve apresentar opções de filtro por caracteristicas {string} e ordenação {string}") do |filtrar, ordenar|
  @screen.call(PlpShoppingScreen).valida_ordenar(ordenar)
  @screen.call(PlpShoppingScreen).valida_filtrar(filtrar)
end

Dado("que aciono opção de fechar") do
  @screen.call(PlpShoppingScreen).btn_fechar
end

Entao("app deve fechar botton sheet de filtro e apresentar PLP sem alteração") do
  @screen.call(PlpShoppingScreen).valida_tela_plp
end

E("seleciono algum filtro") do
  @screen.call(PlpShoppingScreen).seleciona_filtro
end

Entao("app deve apresentar os botões limpar e aplicar") do
  @screen.call(PlpShoppingScreen).valida_btn_limpar_filtro
  @screen.call(PlpShoppingScreen).valida_btn_aplicar_filtro
end

Dado("que aciono opção limpar filtros") do
  @screen.call(PlpShoppingScreen).btn_limpar_filtro
end

E("aciono {string}") do |aplicar|
  @screen.call(PlpShoppingScreen).btn_aplica_filtro(aplicar)
end

Entao("atualizar contador de filtro apresentado ao no botão Filtrar") do
  @screen.call(PlpShoppingScreen).valida_tela_filtrada
end

E("aciono opção Filtrar") do
  @screen.call(PlpShoppingScreen).btn_filtrar
end
