
Quando('eu não informar CEP') do
  @screen.call(PedagioCepScreen).cep_nao_informado
end

Quando("clico em Não sei meu CEP") do
  @screen.call(PedagioCepScreen).botao_nao_sei_cep
end

Quando('eu informar CEP') do
  @screen.call(PedagioCepScreen).cep_cliente
end

Quando('apresentado pedágio de CEP') do
  @screen.call(PedagioCepScreen).valida_pedagio_cep
end

Dado('que estou na Subhome Shopping') do
  @screen.call(PedagioCepScreen).btn_shopping
end

Então('app deve aplicar {string} como CEP padrão') do |string|
    
end
  
Então('na guia de CEP apresentar São Paulo ao invés do CEP') do
  @screen.call(PedagioCepScreen).validar_cep_padrao
end

Então('app deve aplicar CEP informado na guia de CEP') do
  @screen.call(PedagioCepScreen).validar_cep_informado
end

Então("app deve apresentar webview do Correios") do
  @screen.call(PedagioCepScreen).validar_webview_correios
end

Quando('acessar Mercado Online confirmando maioridade') do
  @screen.call(PedagioCepScreen).busca_cep
end

Quando('informar um cep válido') do
  @screen.call(PedagioCepScreen).input_cep_valid
end

Então('o app deve redirecionar para Subhome do Mercado exibindo cep informado anteriormente {string}') do |cep|
  expect(@screen.call(PedagioCepScreen).return_cep.text).to eql cep
end
