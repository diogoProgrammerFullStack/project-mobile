Dado('que o usuário esteja na tela de Cadastro') do
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
end

Quando('for inserido um E-mail não cadastrado na base de dados {string}') do |email|
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Entao('o app deve avançar para tela de informar CPF para cadastro') do
  @screen.call(CadastroScreen).validar_informar_cpf
end

Quando('for clicado em Mais tarde') do
  @screen.call(CadastroScreen).btn_mais_tarde
end

Entao('usuario volta para tela que estava anteriormente.') do
  @screen.call(CommunsScreen).home_is_visible
end

Dado('que o usuário insira novo e-mail {string}') do |email|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Quando('inserir CPF já cadastrado {string}') do |cpf|
  @screen.call(CadastroScreen).input_cpf(cpf)
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
end

Entao('exibe modal com mensagem Verifique que seu CPF está atrelado a estes e-mails:') do
  @screen.call(CadastroScreen).valida_modal_cpf_atrelado
end

Dado('que o CPF do usuario já esteja associada a outro e-mail {string} {string}') do |email, cpf|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf(cpf)
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).valida_modal_cpf_atrelado
end

Quando('toca em fazer login') do
  @screen.call(CadastroScreen).btn_fazer_login
end

Entao('volta para tela anterior para realizar o login novamente.') do
  @screen.call(CommunsScreen).home_is_visible
end

Quando('for inserido um CPF não cadastrado na base de dados {string} {string}') do |email, cpf|
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf(cpf)
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
end

Entao('o app deve avançar para primeira tela de cadastro') do
  @screen.call(CadastroScreen).validar_tela_cadastro_01
end

Entao('o app não irá apresentar mensagem de CPF inválido') do
  @screen.call(CadastroScreen).cpf_invalido
end

Quando('for inserido um CPF inválido {string} {string}') do |email, cpf|
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf(cpf)
end

Entao('o app irá habilitar o botão “Ok, vamos lá“') do
  @screen.call(CadastroScreen).btn_ok_vamos_la_ativo?
end

Quando('inserir CPF incompleto {string} {string}') do |email, cpf|
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf(cpf)
end

Dado('que o usuário esteja na tela de validação de CPF {string}') do |email|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
end

Quando('clica em “Entre em contato com nosso suporte“') do
  @screen.call(CadastroScreen).btn_entre_em_contato
end

Entao('deve ser exibido o modal com os contatos do Suporte') do
  @screen.call(CadastroScreen).modal_problemas_com_sua_conta
end

Dado('que o usuário esteja no fluxo de cadastro {string} {string}') do |email, cpf|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf(cpf)
end

Dado('que o usuário esteja no fluxo de cadastro para cadastrar uma nova conta') do
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(CadastroScreen).input_email_faker
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(CadastroScreen).input_cpf_faker
end

Quando('for preenchido todos os campos das telas de cadastro corretamente {string} {string} {string} {string}') do |nome, sobreNome, telefone, senha|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_telefone(telefone)
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_ofertas_exclusivas
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_regulamentos
  @screen.call(CadastroScreen).btn_chk_box_termos
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_senha(senha)
  @screen.call(CadastroScreen).input_confirmar_senha(senha)
end

Quando('finalizar cadastro') do
  @screen.call(CadastroScreen).btn_finalizar_cadastro
end

Quando('chegar na tela de Informe seus dados pessoais') do
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).validar_tela_cadastro_01
end

E('toca em Como usamos seus dados?') do
  @screen.call(CadastroScreen).btn_como_usamos_seus_dados
end

Entao('será direcionado para a tela Seus dados protegidos') do
  @screen.call(CadastroScreen).validar_tela_dados_protegidos
end

Quando('chegar na tela Qual o seu e-mail e telefone {string} {string}') do |nome, sobreNome|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
end

E('toca em Entre em contato com o SAC') do
  @screen.call(CadastroScreen).btn_contato_sac
end

Quando('chegar na tela de Ofertas Exclusivas {string} {string} {string}') do |nome, sobreNome, telefone|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_telefone(telefone)
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_ofertas_exclusivas
end

Entao('deve ser possível flegar, desflegar as opção compartilhar dados.') do
  @screen.call(CadastroScreen).chk_box_compartilhar_dados
end

E('não deu o aceite nos termos legais {string} {string} {string}') do |nome, sobreNome, telefone|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_telefone(telefone)
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_ofertas_exclusivas
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_regulamentos
end

E('não deu o aceite nos termos legais e avançou {string} {string} {string}') do |nome, sobreNome, telefone|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_telefone(telefone)
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_ofertas_exclusivas
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_regulamentos
  @screen.call(CadastroScreen).btn_avancar
end

Quando('for clicado em Avançar') do
  @screen.call(CadastroScreen).btn_avancar
end

Entao('deve exibido um modal de Atenção com as opções Ok, entendi! e Cancelar Cadastro') do
  @screen.call(CadastroScreen).modal_atencao
end

Quando('for clicado em Cancelar cadastro nos dois modais seguintes') do
  @screen.call(CadastroScreen).btn_cancelar_cadastro
  @screen.call(CadastroScreen).btn_cancelar_cadastro
end

Entao('o app deve retornar para o modal de Login Cadastro') do
  @screen.call(LoginScreen).validar_tela_cadastre_se
end

Quando('for clicado em Ok, entendi') do
  @screen.call(CadastroScreen).btn_ok_entendi
end

Entao('o app deve retornar para a tela de aceite dos Termos legais') do
  @screen.call(CadastroScreen).validar_tela_regulamentos
end

Entao('é direcionada uma mensagem de confirmação de cadastro ao e-mail cadastrado') do
  @screen.call(CadastroScreen).validar_conta_cadastrada
end

Quando('chegar na escolha da senha {string} {string} {string}') do |nome, sobreNome, telefone|
  @screen.call(CadastroScreen).btn_ok_vamos_la_tela_cpf
  @screen.call(CadastroScreen).input_nome(nome)
  @screen.call(CadastroScreen).input_sobreNome(sobreNome)
  @screen.call(CadastroScreen).input_dataNasc
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).input_telefone(telefone)
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_ofertas_exclusivas
  @screen.call(CadastroScreen).btn_avancar
  @screen.call(CadastroScreen).validar_tela_regulamentos
  @screen.call(CadastroScreen).btn_chk_box_termos
  @screen.call(CadastroScreen).btn_avancar
end

Entao('o app deve aceitar senhas que atendam todas as regras do semáforo {string}') do |senha|
  @screen.call(CadastroScreen).input_senha(senha)
end

E('a confirmação da senha deve coincidir com a primeira senha inserida {string}') do |confirmarSenha|
  @screen.call(CadastroScreen).input_confirmar_senha(confirmarSenha)
end

E('deve ser exibido o modal com os contatos do SAC') do
  @screen.call(CadastroScreen).valida_modal_contato_sac
end

Entao('o app irá apresentar mensagem de CPF inválido') do
  @screen.call(CadastroScreen).valida_cpf_invalido
end

Entao('o app deve retornar para a Home') do
  @screen.call(CommunsScreen).home_is_visible
end
