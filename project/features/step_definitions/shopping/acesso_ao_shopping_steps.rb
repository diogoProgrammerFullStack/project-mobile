Dado('que estou na Home Principal') do
  @screen.call(CommunsScreen).home_is_visible
end

Quando('clico no ícone de Shopping nos stories') do
  @screen.call(AcessoAoShoppingScreen).icone_shopping
end

Então('app deve redirecionar para Subhome do Shopping') do
  @screen.call(AcessoAoShoppingScreen).valido_titulo_subhome_shopping
end

Então('apresentar pedágio de CEP') do
  @screen.call(AcessoAoShoppingScreen).subhome_shopping
end

Quando('clico no título da Widget do Shopping') do
  @screen.call(AcessoAoShoppingScreen).icone_shopping
end

Quando('clico no menu {string} na tabbar') do |_string|
  @screen.call(AcessoAoShoppingScreen).tabbar
end

Quando('clico em Shopping') do
  @screen.call(AcessoAoShoppingScreen).icone_shopping_tabbar
end

Dado('que estou na Home Principal logado {string} {string}') do |email, senha|
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(LoginScreen).input_senha(senha)
  @screen.call(LoginScreen).btn_continuar
end

Quando('acesso Shopping') do
  @screen.call(AcessoAoShoppingScreen).icone_shopping_logado
end

Então('recuperar CEP do usuário \(caso já tenha sido informado)') do
  @screen.call(AcessoAoShoppingScreen).cep_shopping_recuperado
end
