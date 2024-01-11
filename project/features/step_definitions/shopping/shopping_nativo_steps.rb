Dado('que acesso a PDP de um produto') do
    @screen.call(ShoppingNativoScreen).acessar_detalhe_produto('Notebooks', ' NP550XDA-KH4BR')
end

# Método para adicionar um produto previo no carrinho e acessar o carrinho para edição do mesmo
Dado ('que acesso o carrinho') do
    @screen.call(ShoppingNativoScreen).acessar_detalhe_produto('Notebooks', ' NP550XDA-KH4BR')
    @screen.call(ShoppingNativoScreen).adicionar_produto_carrinho
end

Quando ('esvazio o carrinho') do
    @screen.call(ShoppingNativoScreen).esvaziar_carrinho
end

Quando ('aciono + em um produto previamente adicionado no carrinho') do
    @screen.call(ShoppingNativoScreen).verificar_contador_carrinho
    @screen.call(ShoppingNativoScreen).adicionar_quantidade_carrinho
end

Quando('retorno pra screen anterior') do
    @screen.call(ShoppingNativoScreen).voltar_tela_continuar_comprando_ate_subhome
end

Quando ('aciono "-" em um produto previamente adicionado no carrinho') do
    @screen.call(ShoppingNativoScreen).adicionar_quantidade_carrinho
    @screen.call(ShoppingNativoScreen).verificar_contador_carrinho
    @screen.call(ShoppingNativoScreen).validar_valor_total
    @screen.call(ShoppingNativoScreen).diminiuir_quantidade_carrinho
end

Quando('adiciono um produto no carrinho acionando "Vou levar"') do
    @screen.call(ShoppingNativoScreen).adicionar_produto_carrinho
end

Quando ('aciono opção Continuar comprando') do 
    @screen.call(ShoppingNativoScreen).continuar_comprando
end

Quando ('aciono opção "Escolher produtos"') do
    @screen.call(ShoppingNativoScreen).esvaziar_carrinho
    @screen.call(ShoppingNativoScreen).escolher_produto
end

Quando ('aciono opção Finalizar a compra') do 
    @screen.call(ShoppingNativoScreen).finalizar_compra
end

Quando('acesso carrinho') do
    @screen.call(ShoppingNativoScreen).acessar_carrinho
end
  
Quando('aciono a opcao escolher produtos') do
    @screen.call(ShoppingNativoScreen).escolher_produto
end

Quando('adiciono mais um item no carrinho') do
    @screen.call(ShoppingNativoScreen).add_produto_carrinho_mais
end

Quando('retiro um item do carrinho') do
    @screen.call(ShoppingNativoScreen).retira_um_produto_carrinho
end

Quando('aciono opção Editar na seção dados pessoais com email {string} {string}') do |email, password|
    @screen.call(ShoppingNativoScreen).editar_dados_pessoais(email, password)
end

Quando('aciono opção de editar dados da entrega com email {string} {string}') do |email, pass|
    @screen.call(ShoppingNativoScreen).editar_entrega(email, pass)
end

Quando('aciono opção "Editar" na seção dados da entrega') do
    @screen.call(ShoppingNativoScreen).editar_entrega
end

Então ('app deve remover todos os produtos do carrinho') do
    @screen.call(ShoppingNativoScreen).validar_carrinho_vazio
end

Então ('app deve apresenta quantidade atualizada do produto') do
    @screen.call(ShoppingNativoScreen).validar_quantidade_produtos_carrinho
end

Então ('app deve voltar para tela onde o fluxo foi acionado') do 
    @screen.call(ShoppingNativoScreen).validar_detalhes_produto
end

Então('app deve voltar para a subhome') do
    @screen.call(ShoppingNativoScreen).validacao_subhome_view
end
  
Então('deve recalcular o valor total') do
    @screen.call(ShoppingNativoScreen).validar_valor_total
    @screen.call(ShoppingNativoScreen).recalcular_valor_total
    @screen.call(ShoppingNativoScreen).esvaziar_carrinho
end

Então('app deve prosseguir para o carrinho') do
    @screen.call(ShoppingNativoScreen).validar_tela_carrinho
end

Então('app deve avançar para aba de pagamento') do 
    @screen.call(ShoppingNativoScreen).validar_tela_pagamento
end

Então('app deve apresentar as opções Cartão de Crédito, Cartão Carrefour, Pix e Boleto') do 
    @screen.call(ShoppingNativoScreen).validar_formas_pagamento
end

Então('apresentar o produto adicionado') do 
    @screen.call(ShoppingNativoScreen).validar_produto_adicionado
    @screen.call(ShoppingNativoScreen).esvaziar_carrinho
end

Então('atualizar a tela exibindo mensagem Seu carrinho esta vazio') do 
    @screen.call(ShoppingNativoScreen).validar_carrinho_vazio
end

Então('verifico as formas de pagamento na tela') do |table|
    
end

Então('app deve apresentar aba de dados pessoais com opção de edição') do
    @screen.call(ShoppingNativoScreen).validar_tela_editar_dados_pessoais
end

Então('app deve apresentar aba de dados da entrega com opção de edição') do
    @screen.call(ShoppingNativoScreen).validar_tela_editar_entrega
end