class VitrineOfertasDaSemanaScreen
    include RSpec::Matchers

    def vitrine_ofertas_da_semana
        scroll_vertical(1,:xpath, "//*[@text='Ofertas da Semana']")
        expect(wait_element(:xpath, "//*[@text='Ofertas da Semana']")).to be_truthy
    end

    def adicionar_produto
        wait_element(:xpath, "//*[@text='Vou levar']").click
    end
end