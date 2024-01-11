Quando("acessa o destaque do {string}") do |destaque|
  @screen.call(DestaqueAppDeslogadoScreen).acessa_destaque(destaque)
end

E("arrasta {int}") do |qnt|
  @screen.call(DestaqueAppDeslogadoScreen).arrasta(qnt)
end

E("toca em Começar") do
  @screen.call(DestaqueAppDeslogadoScreen).comecar
end

Entao("será direcionado para Mercado") do
  @screen.call(DestaqueAppDeslogadoScreen).valida_tela_mercado
end

Entao("será direcionado para Serviços") do
  @screen.call(DestaqueAppDeslogadoScreen).valida_tela_servicos
end

Entao("será direcionado para tela Selecione loja") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_seleciona_uma_loja
end

Entao("será direcionado para tela CyberCook") do
  @screen.call(DestaqueAppDeslogadoScreen).valida_tela_cybercook
end
