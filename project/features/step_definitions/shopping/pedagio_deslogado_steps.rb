Dado('que o usuario esteja na tela Qual o seu cep?') do
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(CommunsScreen).acessa_mercado
    @screen.call(PedagioDeslogadoScreen).btn_receber_em
    @screen.call(PedagioDeslogadoScreen).btn_receba_em_casa
end

Quando('inserir um cep {string}') do |cep|
    @screen.call(PedagioDeslogadoScreen).inserir_cep(cep)
end

Quando('inserir o cep 06226070') do
    @screen.call(PedagioDeslogadoScreen).informar_cep
end

Quando('clica em Receba em Casa') do
    @screen.call(PedagioDeslogadoScreen).btn_receba_em_casa
end

Então('o cep {string} deve ser inserido') do |cep_inserido|
    @screen.call(PedagioDeslogadoScreen).validar_cep_inserido(cep_inserido)
end