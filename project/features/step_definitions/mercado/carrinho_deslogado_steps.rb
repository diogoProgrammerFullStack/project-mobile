Quando("clicar em carrinho") do
  @screen.call(CarrinhoDeslogadoScreen).acessa_carrinho
end

Então("deve solicitar login") do
  @screen.call(LoginScreen).validar_tela_cadastre_se
end
