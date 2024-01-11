Dado('que o usuário esteja no app') do
  @screen.call(CommunsScreen).home_is_visible
end

Quando('toca em Entrar ou Cadastrar-se') do
  @screen.call(MercadoDeslogadoScreen).access_entrar_ou_cadastrar
end

Quando('acessa o icone Cadastre-se') do
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
end

Quando('acessa Saldo total') do
  @screen.call(MercadoDeslogadoScreen).access_saldo_total
end

Quando('acessa o destaque Cadastre-se!') do
  @screen.call(MercadoDeslogadoScreen).access_destaque_cadastre_se
end

Então('exibe modal {string}') do |mensagem|
  @screen.call(MercadoDeslogadoScreen).valida_modal(mensagem)
end 