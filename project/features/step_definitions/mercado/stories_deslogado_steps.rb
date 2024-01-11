Dado("que estou na Home do App") do
  @screen.call(CommunsScreen).home_is_visible
end

Então("devo vizualizar as abas:") do |table|
  @screen.call(StoriesDeslogadoScreen).validar_itens_vitrine(table)
end

Então("devo vizualizar os itens:") do |table|
  @screen.call(StoriesDeslogadoScreen).validar_itens_deslogado(table)
end
