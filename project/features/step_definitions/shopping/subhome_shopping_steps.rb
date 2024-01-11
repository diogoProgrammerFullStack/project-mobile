Então('app deve apresentar opção de login para que seja apresentado histórico') do
  @screen.call(SubhomeShoppingScreen).exibe_fazer_login
end

Então('ao rolar scroll até produtos patrocinados') do
  @screen.call(SubhomeShoppingScreen).scroll_produtos_patrocinados
end

Então('app deve apresentar banner para login logo abaixo') do
  @screen.call(SubhomeShoppingScreen).subhome_shopping_banner_login
end

Então('app deve redirecionar para tela de {string}') do |storie|
  @screen.call(CommunsScreen).validar_mensagem(storie)
end

Quando('navegar até a seção de {string}') do |departamentos|
  @screen.call(CommunsScreen).scroll_departamentos(departamentos)
end

Quando('desço a tela até o footer') do
  @screen.call(SubhomeShoppingScreen).rolar_tela_footer
end

E('clico em Regras das Promoções Carrefour') do
  @screen.call(SubhomeShoppingScreen).acessar_regras_promocoes
end

Então('app deve apresentar modal com as regras') do
  @screen.call(SubhomeShoppingScreen).validar_modal_regras
end

E('ao rolar scroll') do
  @screen.call(SubhomeShoppingScreen).rolar_scroll
end

E('app deve apresentar botão subir') do
  @screen.call(SubhomeShoppingScreen).validar_botao_subir
end

E('clico em Departamentos') do
  @screen.call(SubhomeShoppingScreen).acessar_todos_departamentos
end

Então('app deve direcionar usuário para menu de departamentos') do
  @screen.call(SubhomeShoppingScreen).validar_menu_departamentos
end

Então('app deve redirecionar para tela de Stories:') do |stories|
  @screen.call(SubhomeShoppingScreen).validar_sub_stories(stories)
end
