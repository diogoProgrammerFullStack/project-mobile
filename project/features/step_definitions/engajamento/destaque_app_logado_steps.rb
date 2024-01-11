Entao("será direcionado para Mercado logado") do
  @screen.call(DestaqueAppLogadoScreen).valida_tela_mercado_logado
end

Quando("acessa o destaque Minhas Recompensas") do
  @screen.call(DestaqueAppLogadoScreen).acessa_minhas_recompensas
end

Entao("será direcionado para tela minhas recompensas") do
  @screen.call(DestaqueAppLogadoScreen).valida_minhas_recompensas
end

Entao("será direcionado para tela Conheça o Scan&Go") do
  @screen.call(DestaqueAppLogadoScreen).valida_tela_scan_go
end

Entao("será direcionada para Cupons exclusivos") do
  @screen.call(DestaqueAppLogadoScreen).valida_tela_cupons_exclusivos
end

Quando("acessa o destaque do centro {string}") do |destaque|
  @screen.call(DestaqueAppLogadoScreen).acessa_destaque_centro(destaque)
end

Quando("acessa o destaque do CyberCook") do
  @screen.call(DestaqueAppLogadoScreen).acessa_cybercook
end
