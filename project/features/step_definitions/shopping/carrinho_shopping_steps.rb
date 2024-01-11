Quando('que estou na Subhome do Shopping deslogado') do 
    @screen.call(MenuDepartamentosScreen).acessar_subhome_shopping
end

Quando('eu aciono o icone do carrinho') do
    @screen.call(CarrinhoShoppingScreen).acessa_carrinho
end

Quando('eu verifico o contador de produtos no carrinho') do
    @screen.call(CarrinhoShoppingScreen).adicionar_produto
    @screen.call(CarrinhoShoppingScreen).verificar_contador_carrinho
end

Entao('app deve apresentar modal de login') do 
    @screen.call(LoginScreen).validar_tela_cadastre_se
end

Entao('app deve direcionar para fluxo de carrinho apresentando produtos, caso exista') do 
    @screen.call(CarrinhoShoppingScreen).valida_tela_carrinho
end

Entao('app deve sempre atualizar, na adição ou exclusão de produtos do carrinho') do 
    @screen.call(CarrinhoShoppingScreen).validar_atualizar_carrinho
end