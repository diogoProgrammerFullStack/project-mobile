class UltimosProdutosShoppingScreen 
    include RSpec::Matchers

    def valida_vitrine_ultimos_pedidos(ultimosProdutos)
        wait_element(:xpath, '//*[@text="Shopping"]').click
        expect(wait_element(:xpath, "//*[contains(@text, '#{ultimosProdutos}')]")).to be_truthy
    end 

    def valida_mensagem_apresentada(mensagem)
        expect(wait_element(:xpath, "//*[contains(@text, '#{mensagem}')]")).to be_truthy
    end

    def valida_ultimos_pedidos_visualizados
        expect(wait_element(:xpath, "//*[contains(@text, 'Em 1x no cartão ou boleto')]")).to be_truthy
    end

    def valida_historico_ultimos_visto
        expect(wait_element(:xpath, '//*[@text="Meu histórico de navegação"]')).to be_truthy
    end
end

