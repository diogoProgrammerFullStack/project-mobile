E('toca no Avatar') do
  @screen.call(MeuPerfilLogadoScreen).btn_avatar
end

E('seleciona um Avatar') do
  @screen.call(MeuPerfilLogadoScreen).btn_seleciona_avatar
end

E('toca em Salvar') do
  @screen.call(MeuPerfilLogadoScreen).btn_salvar
end

Entao('será direcionado para tela de Meu Perfil') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_meu_perfil
end

E('toca em Editar perfil') do
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
end

Entao('será direcionado para Editar perfil') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_editar_perfil
end

Dado('que o usuario seleciona data de nascimento') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(CommunsScreen).clica_em('Editar perfil')
  @screen.call(MeuPerfilLogadoScreen).btn_data_nascimento
end

Quando('seleciona todos os campos da data de nascimento válida') do
  @screen.call(MeuPerfilLogadoScreen).seleciona_data_nascimento_valida
end

Quando('seleciona todos os campos da data de nascimento inválida') do
  @screen.call(MeuPerfilLogadoScreen).seleciona_data_nascimento_invalida
end

Quando('digita telefone inválido ou nulo') do
  @screen.call(MeuPerfilLogadoScreen).txt_telefone_inv
end

E('toca em Ok, pode salvar') do
  @screen.call(MeuPerfilLogadoScreen).btn_ok_pode_salvar
end

Entao('exibe modal Data de nascimento alterada') do
  @screen.call(MeuPerfilLogadoScreen).valida_alteraceos_salvas
end

Entao('exibe mensagem Selecione uma data válida') do
  @screen.call(MeuPerfilLogadoScreen).valida_mensagem_data_invalida
end

Dado('que o usuario seleciona telefone') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(CommunsScreen).clica_em('Editar perfil')
  @screen.call(MeuPerfilLogadoScreen).btn_telefone
  @screen.call(MeuPerfilLogadoScreen).campo_telefone
end

Quando('digita telefone válido') do
  @screen.call(MeuPerfilLogadoScreen).txt_telefone
end

Quando('digita telefone inválido {string}') do |telefone|
  @screen.call(MeuPerfilLogadoScreen).txt_telefone(telefone)
end

Entao('exibe modal de alterações salvas com sucesso') do
  @screen.call(MeuPerfilLogadoScreen).valida_alteraceos_salvas
end

Entao('exibe mensagem telefone inválido') do
  @screen.call(MeuPerfilLogadoScreen).validation_tel_inv
end

Dado('que o usuário esteja em Ofertas e Promoçoes') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
  @screen.call(MeuPerfilLogadoScreen).ofertas_e_promocoes
end

Dado('que o usuario seleciona cancelar minha conta') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_cancela_minha_conta
end

Quando('usuário acessa a Central de ajuda') do
  @screen.call(MeuPerfilLogadoScreen).central_de_ajuda
end

Quando('usuário acessa o Termos e Condições') do
  @screen.call(MeuPerfilLogadoScreen).acessar_termos_condicoes
end

Quando('flega a opção Selecionar todas as opções') do
  @screen.call(MeuPerfilLogadoScreen).flegar_seleciona_todas_opcoes
end

Dado('que o usuário esteja em editar perfil') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
end

Quando('toca em Como usamos seus dados') do
  @screen.call(MeuPerfilLogadoScreen).acessar_como_usamos_seus_dados
end

Entao('será direcionado para tela Seus dados protegidos') do
  @screen.call(CadastroScreen).validar_tela_dados_protegidos
end

Entao('será direcionado para tela Personalizar experiência') do
  @screen.call(MeuPerfilLogadoScreen).validar_tela_personalizar_experiencia
end

Entao('será direcionado para tela Meus Endereços') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_meus_enderecos
end

Dado('que o usuario esteja em Meus endereços') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_meus_enderecos
end

Quando('acessa Novo endereço') do
  @screen.call(MeuPerfilLogadoScreen).btn_novo_endereco
end

E('preenche campos obrigatorios de endereço validos {string} {string} {string} {string} {string} {string} {string}') do |nome, nomeEndereco, telefone, cep, numero, complemento, pontoDeReferencia|
  @screen.call(MeuPerfilLogadoScreen).txt_nome_do_endereco(nome)
  @screen.call(MeuPerfilLogadoScreen).txt_nome_endereco(nomeEndereco)
  @screen.call(MeuPerfilLogadoScreen).txt_telefone_enereço(telefone)
  @screen.call(MeuPerfilLogadoScreen).txt_cep(cep)
  @screen.call(MeuPerfilLogadoScreen).txt_numero(numero)
  @screen.call(MeuPerfilLogadoScreen).txt_complemento(complemento)
  @screen.call(MeuPerfilLogadoScreen).txt_ponto_referencia(pontoDeReferencia)
end

Entao('será direcionado para tela Meus endereços com endereço salvo') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_endereco
end

Quando('clica nos três pontos') do
  @screen.call(MeuPerfilLogadoScreen).btn_tres_pontos
end

E('toca em editar') do
  @screen.call(MeuPerfilLogadoScreen).btn_editar_endereco
end

Entao('será direcionado a tela inserir seus dados') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_inserir_seus_dados
end

E('toca em excluir') do
  @screen.call(MeuPerfilLogadoScreen).btn_excluir
end

Entao('o endereço será excluido.') do
  @screen.call(MeuPerfilLogadoScreen).valida_excluir_endereco
end

Entao('será direcionado para tela de opinião do App') do
  @screen.call(MeuPerfilLogadoScreen).valida_tela_opiniao_app
end

Entao('será direcionado para tela do app deslogado') do
  @screen.call(MeuPerfilLogadoScreen).btn_confirmar_logout
  @screen.call(MeuPerfilLogadoScreen).validar_tela_home_deslogado
end

Entao('as opções de E-mail, WhatsApp, SMS e e também concordo são selecionadas') do
  @screen.call(MeuPerfilLogadoScreen).valida_flegar
end

Quando('seleciona Cliente') do
  @screen.call(MeuPerfilLogadoScreen).btn_cliente
end

E('seleciona Quero solicitar a anonização/bloqueio/eliminação dos meus dados') do
  @screen.call(MeuPerfilLogadoScreen).btn_bloqueio
end

E('que o usuario seleciona Nome completo') do
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_novo_nome
end

Quando('digitar o novo nome {string}') do |nome|
  @screen.call(MeuPerfilLogadoScreen).informar_novo_nome(nome)
end

Entao('exibe modal Alterações salvas com sucesso') do
  @screen.call(MeuPerfilLogadoScreen).valida_alteraceos_salvas
end

Dado('que o usuario seleciona {string}') do |element|
  @screen.call(MercadoDeslogadoScreen).access_perfil
  @screen.call(MeuPerfilLogadoScreen).btn_editar_perfil
  @screen.call(CommunsScreen).clica_em(element)
end

Quando('digita Senha atual') do
  @screen.call(MeuPerfilLogadoScreen).txt_senha_atual
end

Quando('digita nova senha') do
  @screen.call(MeuPerfilLogadoScreen).txt_nova_senha
end

Quando('confirma senha') do
  @screen.call(MeuPerfilLogadoScreen).txt_confirma_nova_senha
end

Então('exibe modal Senha alterada com sucesso') do
  @screen.call(MeuPerfilLogadoScreen).valida_senha_alterada
end

Entao('será direcionado para tela Meus Cupons Ativos') do
  @screen.call(MeuPerfilLogadoScreen).validar_tela_Meus_Cupons
end
