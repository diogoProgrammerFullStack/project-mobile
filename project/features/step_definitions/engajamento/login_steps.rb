Dado('que o usuário digite e-mail já cadastrado {string}') do |email|
       @screen.call(LoginScreen).input_email(email)
end

Dado('que o usuário esteja na tela Sua Senha {string}') do |email|
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
    @screen.call(LoginScreen).input_email(email)
    @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Dado('que o usuário no fluxo de Login {string}') do |email|
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
    @screen.call(LoginScreen).input_email(email)
    @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Dado('que o usuário esteja na tela de Login') do
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
end

Quando('for inserido um e-mail inválido {string}') do |email|
    @screen.call(LoginScreen).input_email(email)
end

Quando('toca em Ok, vamos lá') do
    @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Quando('não inserir o e-mail {string}') do |email|
    @screen.call(LoginScreen).input_email(email)
end

Quando('inserir o e-mail incompleto {string}') do |email|
    @screen.call(LoginScreen).input_email(email)
end

Quando('acessa Esqueci minha senha, me ajuda?') do
    @screen.call(LoginScreen).esqueci_senha
end

Quando('digita senha invalida {string}') do |senha|
    @screen.call(LoginScreen).input_senha(senha)
end

Quando('não inserir a senha {string}') do |senha|
    @screen.call(LoginScreen).input_senha(senha)
end

Quando('usuário click no botao cadastre-se') do
    @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  end

Quando('inserir a senha incompleta {string}') do |senha|
    @screen.call(LoginScreen).input_senha(senha)
end

Quando('toca em Voltar') do 
    @screen.call(LoginScreen).btn_voltar
end

E('digita senha cadastrada {string}') do |senha|
    @screen.call(LoginScreen).input_senha(senha)
end

E('toca em Continuar') do 
    @screen.call(LoginScreen).btn_continuar
end

Então('será diricionado para tela da home logado') do
    @screen.call(LoginScreen).login_efetuado
end

Então('o app não irá habilitar o botão Ok, vamos lá!') do 
    @screen.call(LoginScreen).btn_ok_vamos_la_ativo?
end

Entao('exibe modal Problemas com sua senha?') do 
    @screen.call(LoginScreen).modal_senha
end

Entao('exibe mensagem Opa, a senha informada está incorreta.') do 
    @screen.call(LoginScreen).btn_continuar
    @screen.call(LoginScreen).mensagem_senha_errada
end

Entao('não poderá seguir para proxima tela') do
    @screen.call(LoginScreen).validar_botao_continuar
end

Entao('será direcionado para a tela da home deslogado.') do
    @screen.call(LoginScreen).validar_tela_cadastre_se
end