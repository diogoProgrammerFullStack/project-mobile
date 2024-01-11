Quando("visualizar Ofertas da semana") do
  @screen.call(VitrineOfertasDaSemanaScreen).vitrine_ofertas_da_semana
end

Então("deve ser direcionado a PLP de ofertas da semana") do
  @screen.call(CommunsScreen).valida_plp_ofertas
end

Dado("que o usuário esteja na vitrine") do
    @screen.call(CommunsScreen).home_is_visible
end

Quando("clicar em um card de um produto") do
    @screen.call(AcessarHomeDeslogadoScreen).acessar_produto_shopping_online
end

Então("deve abrir a PDP") do
    @screen.call(AcessarHomeDeslogadoScreen).valida_pag_detalhes_do_produto
end

Quando("que o usuário esteja deslogado") do
    @screen.call(CommunsScreen).home_is_visible
end

Quando("estiver na vitrine") do
    @screen.call(AcessarHomeDeslogadoScreen).acessar_produto_shopping_online
end

Quando("adicionar um produto") do
    @screen.call(VitrineOfertasDaSemanaScreen).adicionar_produto
end

Então("deve abrir o modal de login") do
    @screen.call(LoginScreen).validar_tela_cadastre_se
end

Então("deve conter dez produtos no carrosel") do
    @screen.call(LoginScreen).validar_quantidade_itens
end