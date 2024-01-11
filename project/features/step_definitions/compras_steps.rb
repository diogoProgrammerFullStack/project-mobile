Dado('que o cliente acesse Mercado Online') do
  @screen.call(HomeScreen).access_market_home
end

Quando('pesquisar por {string} para entrega em domicilio') do |product|
  @screen.call(HomeScreen).search_product(product)
end

Entao('deve visualizar o produto {string} no resultado da busca') do |product|
  @screen.call(HomeScreen).product_found?(product)
end