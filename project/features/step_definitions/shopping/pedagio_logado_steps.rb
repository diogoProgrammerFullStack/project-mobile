Entao("deve visualizar modal de pedágio de CEP") do
  @screen.call(PedagioLogadoScreen).valida_modal_pedagio_cep_logado
end

Entao("deve manter no modal de cep") do
  @screen.call(PedagioLogadoScreen).valida_modal_pedagio_cep_logado
end

Entao("o campo de inserir cep retorna vazio") do
  @screen.call(PedagioLogadoScreen).valida_modal_pedagio_cep_logado
end

Entao("no header e exibida a mensagem {string}") do |mensagem|
  @screen.call(CommunsScreen).validar_mensagem(mensagem)
end

Quando("fechar o modal de CEP") do
  @screen.call(PedagioLogadoScreen).btn_fecha_modal_cep
end

Dado("que o usuário abra o pedágio de CEP") do
  @screen.call(CommunsScreen).acessa_mercado_logado
  @screen.call(PedagioLogadoScreen).btn_inserir_cep
end

Dado('que o usuário abra o pedágio de CEP com cep ja cadastrado') do
  @screen.call(PedagioLogadoScreen).btn_receber_em_cep
end

Quando('inserir um cep válido') do
  @screen.call(PedagioLogadoScreen).informar_cep_valido
end

Quando('clica em Buscar') do
  @screen.call(PedagioLogadoScreen).btn_buscar_cep
end

Quando("inserir um cep válido {string}") do |cep|
  @screen.call(PedagioDeslogadoScreen).inserir_cep(cep)
end

Quando("inserir um cep inválido {string}") do |cep|
  @screen.call(PedagioDeslogadoScreen).inserir_cep(cep)
end

Quando("inserir um cep válido 01310-930") do
  @screen.call(PedagioLogadoScreen).informar_cep_valido
end

Quando("inserir um cep inválido 00000000") do
  @screen.call(PedagioLogadoScreen).informar_cep_invalido
end

Quando('clica em informe seu cep') do
  @screen.call(PedagioLogadoScreen).click_informa_cep
end

Dado("que o usuário esteja na sub home no seu primeiro acesso") do
  @screen.call(CommunsScreen).acessa_mercado_logado
  @screen.call(PedagioLogadoScreen).btn_inserir_cep
end

Quando("visualiza modal de CEP") do
  @screen.call(PedagioLogadoScreen).valida_modal_pedagio_cep_logado
end

Entao("o CEP padrão deve ser inserido no header automaticamente {string}") do |local|
  @screen.call(PedagioLogadoScreen).valida_cep_padrao(local)
end

Então("deve visualizar Receber em: {string}") do |mensagem|
  @screen.call(CommunsScreen).validar_mensagem(mensagem)
end

Dado("que o usuário esteja na sub home logado") do
    @screen.call(CommunsScreen).acessa_mercado_logado
    @screen.call(PedagioLogadoScreen).btn_inserir_cep
end

Então("o CEP informado anteriormente deve se manter no header {string}") do |local|
    @screen.call(CommunsScreen).validar_mensagem(local)
end

Então("deve visualizar informe seu cep") do
  @screen.call(PedagioLogadoScreen).inform_zip_code
end
