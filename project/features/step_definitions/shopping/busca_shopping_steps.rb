Quando('aciono o campo de busca') do 
    @screen.call(BuscaShoppingScreen).btn_busca_shopping
end

E('informo conteúdo para busca {string}') do |produto|
    @screen.call(BuscaShoppingScreen).input_busca(produto)
end

Entao('app deve apresentar resultado da busca com sugestões e departamentos') do
    @screen.call(BuscaShoppingScreen).valida_sugestoes_departamentos
end

Dado('que realizei uma busca com resultado {string}') do |produto|
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(AcessaShoppingScreen).acessa_shopping
    @screen.call(AcessaShoppingScreen).btn_fechar_pedagio_cep
    @screen.call(AcessaShoppingScreen).valida_tela_shopping
    @screen.call(BuscaShoppingScreen).btn_busca_shopping
    @screen.call(BuscaShoppingScreen).input_busca(produto)
end

Quando('aciono um produto das sugestões') do 
    @screen.call(BuscaShoppingScreen).btn_produto_sugestoes
end

Entao('app deve abrir Página de detalhes do produto') do 
    @screen.call(BuscaShoppingScreen).valida_tela_pdl
end

Quando('aciono um departamento sugerido') do 
    @screen.call(BuscaShoppingScreen).btn_produto_departamento
end

Entao('app deve abrir Página lista de produtos') do 
    @screen.call(BuscaShoppingScreen).valida_pagina_lista_produto
end

Dado('que estou na Subhome do Shopping logado {string} {string}') do |email, senha|
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(MercadoDeslogadoScreen).access_icon_cadastre_se
    @screen.call(LoginScreen).input_email(email)
    @screen.call(PedagioDeslogadoScreen).btn_ok_vamos_la
    @screen.call(LoginScreen).input_senha(senha)
    @screen.call(LoginScreen).btn_continuar
    @screen.call(MeuPerfilDeslogadoScreen).validar_tela_logado
end

Entao('app deve apresentar {string}') do |elemento|
    @screen.call(BuscaShoppingScreen).valida_ultimas_busca(elemento)
end

E('atualizar últimas buscas') do
    @screen.call(BuscaShoppingScreen).valida_ultimas_buscas
end

Quando('aciono o campo de busca logado') do 
    @screen.call(BuscaShoppingScreen).btn_busca_shopping
end

E('informo conteúdo para busca que não retorne resultado {string}') do |produto| 
    @screen.call(BuscaShoppingScreen).input_busca(produto)
end

Entao('app deve apresentar tela de exceção') do
    @screen.call(BuscaShoppingScreen).valida_tela_execao
end
