E('toca em Meus cupons') do
  @screen.call(MeuPerfilDeslogadoScreen).btn_meus_cupons
end

Entao('exibe modal Cadastre-se ou acesse sua conta') do
  @screen.call(LoginScreen).validar_tela_cadastre_se
end

Entao('será direcionado para app do Cartão de cédito Carrefour') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_app_carrefour
end

Entao('Então será direcionado para play store para baixar o app do Cartão de cédito Carrefour') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_play_store
end

E('toca em {string}') do |elemento|
  @screen.call(MeuPerfilDeslogadoScreen).toca_em(elemento)
end

Entao('será direcionado para tela de Central de Ajuda') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_tela_central_de_ajuda
end

Entao('será direcionado para tela de Termos e Condições') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_tela_termos_de_uso
end

Entao('será direcionado para tela de Política de Privacidade') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_tela_politica_de_privacidade
end

Entao('será direcionado para tela Sobre o App') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_tela_sobre_app
end

Entao('será direcionado para app do Cartão de crédito Carrefour') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_app_carrefour
end

Entao('será direcionado para play store para baixar o app do Cartão de crédito Carrefour') do
  @screen.call(MeuPerfilDeslogadoScreen).validar_app_carrefour
end

E('navego pelo meu perfil') do
  @screen.call(MeuPerfilDeslogadoScreen).arrasta_meu_perfil
end
