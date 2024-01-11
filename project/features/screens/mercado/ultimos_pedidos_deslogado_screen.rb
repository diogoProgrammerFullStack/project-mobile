class UltimosPedidosDeslogadoScreen
    include RSpec::Matchers

    def valida_ultimos_pedidos_deslogado
        expect(wait_element(:xpath, "//*[contains(@text,'Para visualizar seus últimos pedidos')]")).to be_truthy
    end

end