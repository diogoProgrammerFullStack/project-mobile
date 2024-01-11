Quando("acessar Mercado") do
    @screen.call(CommunsScreen).acessa_mercado
end

Então("deve visualizar Para visualizar seus últimos pedidos faça login com a sua conta.") do
    @screen.call(UltimosPedidosDeslogadoScreen).valida_ultimos_pedidos_deslogado
end