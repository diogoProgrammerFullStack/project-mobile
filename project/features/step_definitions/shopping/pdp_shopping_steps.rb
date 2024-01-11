Quando("busco por produto desejado {string}") do |produto|
  @screen.call(BuscaShoppingScreen).btn_busca_shopping
  @screen.call(BuscaShoppingScreen).input_busca(produto)
  @screen.call(PdpShoppingScreen).btn_produto_sugestoes
end

Entao("app deve abrir PDP apresentando header com opção de voltar e guia de CEP Região") do
  @screen.call(PdpShoppingScreen).valida_tela_pdp
end

E("deve apresentar na tela fotos do produto, título do produto, preço, condições de pagamento, botão vou levar, vendido e entregue por do produto {string}") do |produto|
  @screen.call(PdpShoppingScreen).valida_foto_produto
  @screen.call(PdpShoppingScreen).valida_titulo_produto(produto)
  @screen.call(PdpShoppingScreen).valida_preco_produto
  @screen.call(PdpShoppingScreen).valida_condicoes_pagamento
  @screen.call(PdpShoppingScreen).valida_btn_vou_levar
  @screen.call(PdpShoppingScreen).valida_vendido_entregue_por
end

Dado("que eu estou em uma PDP {string}") do |produto|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(AcessoAoShoppingScreen).icone_shopping
  @screen.call(AcessoAoShoppingScreen).subhome_shopping
  @screen.call(BuscaShoppingScreen).btn_busca_shopping
  @screen.call(BuscaShoppingScreen).input_buscacelular(produto)
end

Entao("app deve apresentar condições de pagamentos {string} {int}") do |condicao, qnt|
  @screen.call(PdpShoppingScreen).navega_tela_condicoes_pagamento(qnt)
  @screen.call(PdpShoppingScreen).valida_condicao_pagamento(condicao)
end

Então('app deve apresentar condições de pagamentos') do 
  @screen.call(PdpShoppingScreen).valida_condicao_pagamento
end

Quando("aciono Condições de pagamento") do
  @screen.call(PdpShoppingScreen).btn_condicoes_pagamento
end

Dado("que eu estou em uma PDP de um produto vendido e entregue pelo Carrefour {string}") do |produto|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(AcessoAoShoppingScreen).icone_shopping
  @screen.call(AcessoAoShoppingScreen).subhome_shopping
  @screen.call(BuscaShoppingScreen).btn_busca_shopping
  @screen.call(BuscaShoppingScreen).input_buscaTv(produto)
  sleep 10
end

Quando("verifico a apresentação da label Vendido e entregue por") do
  @screen.call(PdpShoppingScreen).valida_vendido_entregue_por
end

Entao("app deve apresentar Carrefour") do
  @screen.call(PdpShoppingScreen).valida_vendido_entregue_por_carrefour
end

Dado("que eu estou em uma PDP de um produto de Marketpalce {string}") do |produto|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(AcessoAoShoppingScreen).icone_shopping
  @screen.call(AcessoAoShoppingScreen).subhome_shopping
  @screen.call(BuscaShoppingScreen).btn_busca_shopping
  @screen.call(BuscaShoppingScreen).input_buscacelular(produto)
end

Entao("app deve apresentar o nome da loja em azul") do
  @screen.call(PdpShoppingScreen).valida_nome_loja
end

E("apresentar abaixo a opção O Carrefour garante a sua compra") do 
  @screen.call(PdpShoppingScreen).valida_garante_sua_compra
end

Quando("clico em O Carrefour garante a sua compra") do
  @screen.call(PdpShoppingScreen).acessa_garante_sua_compra
end

Entao("app deve apresentar modal com as definições, botão Entendi e opção fechar") do
  @screen.call(PdpShoppingScreen).valida_modal_garante_sua_compra
end

Dado("que eu estou em uma PDP estando logado {string} {string} {string}") do |email, senha, produto|
  @screen.call(CommunsScreen).home_is_visible
  @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
  @screen.call(LoginScreen).input_email(email)
  @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
  @screen.call(LoginScreen).input_senha(senha)
  @screen.call(LoginScreen).btn_continuar
  @screen.call(AcessoAoShoppingScreen).icone_shopping
  @screen.call(AcessoAoShoppingScreen).subhome_shopping
  @screen.call(BuscaShoppingScreen).btn_busca_shopping
  @screen.call(BuscaShoppingScreen).input_buscacelular(produto)
end

Entao("app deve me direcionar ao carrinho apresentando o produto adicionado") do
  @screen.call(PdpShoppingScreen).valida_carrinho_produto_adicionado
end


