Entao("será direcionado para o Mercado logado") do
  @screen.call(DestaqueAppLogadoScreen).valida_tela_mercado_logado
end

Entao("será direcionado para Minhas Recompensas") do
  @screen.call(DestaqueAppLogadoScreen).valida_minhas_recompensas
end

Entao("será direcionado para Scan&Go") do
  @screen.call(DestaqueAppLogadoScreen).valida_tela_scan_go
end

Quando("tocar em Cupons") do
  @screen.call(BarraNavegacaoLogadoScreen).acessa_cupons
end

Quando("tocar em Meus Pedidos") do
  @screen.call(BarraNavegacaoLogadoScreen).acessa_meus_pedidos
end

Quando("tocar em Folhetos") do
  @screen.call(BarraNavegacaoLogadoScreen).acessa_folhetos
end

Quando("tocar em Ofertas da Loja") do
  @screen.call(BarraNavegacaoLogadoScreen).acessa_ofertas_loja
end

Entao("será direcionado para tela Escolha uma Loja") do
  @screen.call(BarraNavegacaoLogadoScreen).valida_tela_escolha_uma_loja
end

