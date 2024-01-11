Entao("será direcionado para as Minhas Recompensas") do
  @screen.call(HomeLogadoScreen).validar_tela_minhas_recompensas
end

Quando("acessar Mercado Online logado") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_mercado_online
  @screen.call(AcessarHomeDeslogadoScreen).btn_ok
end

Então("dever ser apresenta Benefícios Meu Carrefour") do
  @screen.call(HomeLogadoScreen).valida_tela_beneficios_meu_carrefour_logado
end

Então("deve visualizar na loja, em casa ou onde estiver") do
  @screen.call(AcessarHomeDeslogadoScreen).validar_tela_para_voce_usar
end

Então('app apresentará tela correspondente a banner acionado \(banner e funcionalidade parametrizáveis)') do
  @screen.call(HomeLogadoScreen).validar_banner_acionado
end

Quando("acessar Cartão") do
  @screen.call(HomeLogadoScreen).acessa_cartao_carrefour
end
