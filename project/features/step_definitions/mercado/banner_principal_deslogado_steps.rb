Dado("que o usuário esteja na sub home") do
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(CommunsScreen).acessa_mercado
end

Quando("vizualizar banner principal") do
  @screen.call(BannerPrincipalDeslogadoScreen).validar_banner
end

E("arrasto banner") do
  @screen.call(BannerPrincipalDeslogadoScreen).arrastar_banner(988, 1620, 0, 1620)
end

Então("deve vizualizar os demais banner") do
  @screen.call(BannerPrincipalDeslogadoScreen).validar_demais_banners
end

Então("deve vizualizar banner principal") do
  @screen.call(BannerPrincipalDeslogadoScreen).validar_banner
end
