Dado("que usuário esteja na Home") do
  @screen.call(CommunsScreen).home_is_visible
end

Quando("acessar Mercado Online") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_mercado_online
  @screen.call(AcessarHomeDeslogadoScreen).verificar_modal_cadastro
end

Então("será direcionado para o Mercado") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_pagina_mercado
end

Quando("acessar uma oferta do Mercado Online") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_produto_mercado_online
end

Então("será exibido modal de Cadastre-se ou Login") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_modal_cadastro
end

Quando("scrolla ofertas do Mercado Online") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_produtos_mercado_online_home
end

Então("exibe ofertas do Mercado Online") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_ofertas_home
end

Quando("acessar Shopping Online") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_shopping_home
end

Quando("acessar uma oferta do Shopping Online") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_produto_shopping_online
end

Quando("scrolla Benefícios Meu Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_beneficios_meu_carrefour
end

Então("será direcionado para detalhes do produto.") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_pag_detalhes_do_produto
end

Quando("acessar Benefícios Meu Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_beneficios_meu_carrefour
end

Então("será direcionado para os Benefícios Meu Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_beneficios_meu_carrefour
end

Quando("acessar um Benefício") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_beneficios_meu_carrefour
end

Então("exibe Benefícios Meu Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_pag_bedeficios_meu_carrefour
end

Então("exibe outro Benefício Meu Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_bedeficios_meu_carrefour_home
end

Quando("acessar Minhas Recompensas") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_minhas_recompensas_home
end

Então("será exibido modal Cadastre-se ou acesse sua conta.") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_pag_bedeficios_meu_carrefour
end

Dado("acionado banner horizontal desejado") do
  @screen.call(AcessarHomeDeslogadoScreen).acessar_banner
end

Então("app apresentará tela correspondente a banner acionado") do
  @screen.call(AcessarHomeDeslogadoScreen).validar_banner
end

Quando("toca em Entre ou cadastre-se") do
  @screen.call(AcessarHomeDeslogadoScreen).btn_entre_cadastre_se
end

Quando("scrollar cardápio de Recompensas") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_recompensas
end

Quando("toca em Ver todas") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_recompensas
  @screen.call(AcessarHomeDeslogadoScreen).btn_ver_todas
end

Quando("acessar uma recompensa") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_recompensas
  @screen.call(AcessarHomeDeslogadoScreen).acessa_recompensa
end

Entao("será exibido cardápio de Recompensas") do
  @screen.call(AcessarHomeDeslogadoScreen).validar_cardapio_recompensa
end

Quando("scrolla ofertas do Shopping Online") do
  @screen.call(AcessarHomeDeslogadoScreen).scroll_produtos_shopping_online_home
end

Então("exibe ofertas do Shopping Online") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_ofertas_home
end

Quando("acessar Cupons") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_cupons
end

Quando("toca em Entre ou cadastre-se em cupons") do
  @screen.call(AcessarHomeDeslogadoScreen).btn_entre_cadastre_se_cupons
end

Quando("toca em Entrar ou cadastre-se em Meu cartão Carrefour") do
  @screen.call(AcessarHomeDeslogadoScreen).btn_entre_cadastre_se_meu_cartao
end

Quando("navego até Para você usar") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_pra_voce_usar
end

Entao("deve visualizar Encontre tudo aqui") do
  @screen.call(AcessarHomeDeslogadoScreen).validar_tela_para_voce_usar
end

Quando("acessar Leitor") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_leitor
end

Entao("exibe tela consulte os preços") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_leitor
end

Quando("acessar Scan&Go") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_scan_go
end

Quando("acessar CyberCook") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_cybercook
end

Quando("acessar Folhetos") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_folhetos
end

Então("abre a pagina de google play store") do
  @screen.call(AcessarHomeDeslogadoScreen).validar_play_store
end

Entao("será direcionado para tela Selecione uma loja") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_seleciona_uma_loja
end

Quando("acessar Ofertas da Loja") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_ofertas_da_loja
end

Quando("toca no botão selecione uma loja") do
  @screen.call(AcessarHomeDeslogadoScreen).btn_selecione_uma_loja
end

Quando("acessar Perguntas frequentes") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_perguntas_frequentes
end

Entao("será direcionado para Central de Atendimento") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_central_atendimento
end

Quando("acessar Fale com a Carina") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_fale_com_a_carina
end

Entao("será direcionado para whatsapp") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_whatsapp
end

Quando("acessar Chat") do
  @screen.call(AcessarHomeDeslogadoScreen).acessa_chat
end

Entao("será direcionado para tela Fale conosco") do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_fale_conosco
end

Entao("será direcionado para app Cartão Carrefour") do
  @screen.call(MeuPerfilDeslogadoScreen).validar_play_store
end
Então('leitor exibe modal Cadastre-se ou acesse sua conta') do
  @screen.call(AcessarHomeDeslogadoScreen).valida_tela_leitor
end