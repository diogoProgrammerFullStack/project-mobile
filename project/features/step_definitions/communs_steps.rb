Dado('que o usuario esteja deslogado no app') do
  @screen.call(CommunsScreen).home_is_visible
end

Dado('que o usuario esteja em Meu Perfil') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
end

Dado('que estou na sub home') do
  @screen.call(CommunsScreen).acessa_mercado
end

Quando('acessa a sub home') do
  @screen.call(CommunsScreen).acessa_sub_home
end

Quando('acessa a sub home logado') do
  @screen.call(CommunsScreen).acessa_sub_home_logado
end

Dado('que estou no corredor') do
  @screen.call(CommunsScreen).acessa_corredores
end

Quando('clicar em {string}') do |mensagem|
  @screen.call(CommunsScreen).acessar_vitrine(mensagem)
end

Quando('clicar nas primeiras vitrines {string}') do |mensagem|
  @screen.call(CommunsScreen).acessar_vitrine_primeiras(mensagem)
end

Quando('clicar nas vitrines intermediarias {string}') do |mensagem|
  @screen.call(CommunsScreen).acessar_vitrine_intermediarias(mensagem)
end

Quando('usuario acessa o corredor {string}') do |corredor|
  @screen.call(CommunsScreen).acessar_corredor(corredor)
end

Quando('acessa Mercado') do
  @screen.call(CommunsScreen).acessa_mercado
end

E('arrasto {int}') do |qnt|
  until qnt == 0
    @screen.call(CommunsScreen).arrasta(488, 1431, 0, 1431)
    qnt -= 1
  end
end

E('clica em {string}') do |element|
  @screen.call(CommunsScreen).clica_em(element)
end

Então('deve visualizar {string}') do |mensagem|
  @screen.call(CommunsScreen).validar_mensagem(mensagem)
end

Entao('será direcionado para Shopping') do
  @screen.call(DestaqueAppDeslogadoScreen).valida_tela_shopping
end

Dado('que o usuario esteja logado no app {string} {string}') do |email, senha|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(LoginScreen).input_senha(senha)
  @screen.hide_keyboard
  @screen.call(LoginScreen).btn_continuar
  @screen.call(MeuPerfilDeslogadoScreen).validar_tela_logado
end

Quando('acessa o menu Meu perfil') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
end

Quando('tocar em {string}') do |menu|
  @screen.call(BarraNavegacaoLogadoScreen).acessa_menu(menu)
end

Dado('que estou na Subhome do Shopping') do
  @screen.call(AcessoAoShoppingScreen).icone_shopping
end

Entao('será direcionado para tela Meus pedidos e compras') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_meus_pedidos_e_compras
end

E('navega pelos destaques ate {string}') do |elemento|
  @screen.call(CommunsScreen).navega_destaques(elemento)
end

Então('o app deve apresentar a opção {string}') do |msg|
  @screen.call(CommunsScreen).validar_mensagem(msg)
end
