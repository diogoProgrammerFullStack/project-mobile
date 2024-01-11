Quando("clicar em Encontrar lojas") do
  @screen.call(EncontrarLojasScreen).acessar_encontrar_lojas
end

Então("deve aparecer a tela Você será redirecionado para a Página Principal do app") do
  @screen.call(EncontrarLojasScreen).valida_mensagem_direcionamento_pagina_principal
end

Quando("habilitar Não avisar novamente") do
  @screen.call(EncontrarLojasScreen).seleciona_checkbox_não_avisar_novamente
end

Quando("clica em cancelar") do
  @screen.call(EncontrarLojasScreen).btn_cancelar
end

Quando("clica em continuar") do
  @screen.call(EncontrarLojasScreen).btn_continuar
end

Então("a mensagem {string} não deve mais aparecer") do |element|
  @screen.call(EncontrarLojasScreen).acessar_encontrar_lojas_novamente
  @screen.call(EncontrarLojasScreen).valida_mensagem_não_disponível(element)
end

Então("a mensagem {string} não deve aparecer") do |element|
  @screen.call(EncontrarLojasScreen).valida_mensagem_não_disponível(element)
end

Quando("clica em Cupons Exclusivos") do
  @screen.call(EncontrarLojasScreen).acessar_cupons_exclusivos
end

E("acessar novamente {string}") do |element|
  @screen.call(EncontrarLojasScreen).acessar_campo_novamente(element)
end

Dado("que o usuario deseja encontrar lojas") do
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(CommunsScreen).acessa_corredores
  @screen.call(EncontrarLojasScreen).acessar_encontrar_lojas
end

Então("deve ser direcionado para a tela de lista de lojas") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_seleciona_uma_loja
end

Dado("que o usuario esteja na tela de lista de lojas") do
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(CommunsScreen).acessa_corredores
  @screen.call(EncontrarLojasScreen).acessar_encontrar_lojas
  @screen.call(EncontrarLojasScreen).clicar_continuar
end

Quando("escolher uma das lojas listada") do
  @screen.call(EncontrarLojasScreen).seleciona_loja
end

Então("deve ser direcionado para tela Detalhe da loja") do
  @screen.call(EncontrarLojasScreen).valida_detalhes_loja
end

Então("deve voltar para tela de Corredores") do
  @screen.call(EncontrarLojasScreen).valida_corredor
end

Dado("que o usuario deseja acessar {string}") do |element|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(CommunsScreen).acessa_corredores
  @screen.call(CommunsScreen).clica_em(element)
end

Então("deve ser direcionado para a tela FAQ App Meu Carrefour") do
  @screen.call(EncontrarLojasScreen).valida_faq
end

Então("deve ser direcionado para a tela cupons exclusivos") do
  @screen.call(EncontrarLojasScreen).valida_cupons_exclusivos
end

