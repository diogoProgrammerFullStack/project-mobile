class PlpDeslogadoScreen
    include RSpec::Matchers

def estories_bebida
    scroll_vertical(3,:xpath, '//*[@text="Bebidas"]')
    wait_element(:xpath, '//*[@text="Bebidas"]').click
end

def corredor_bebidas
    wait_element(:xpath, '//*[@content-desc="Corredores"]').click
    expect(wait_element(:xpath, "//*[@text='Corredores']")).to be_truthy
    wait_element(:id, "br.com.carrefour:id/titleRunners").click
end

end