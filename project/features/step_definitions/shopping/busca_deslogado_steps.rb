E('busco por {string}') do |product|
  @screen.call(BuscaDeslogadoScreen).busca_produto(product)
end

Então('deve visualizar PLP desse produto {string}') do |product_name|
  @screen.call(BuscaDeslogadoScreen).produto_encontrado?(product_name)
end
