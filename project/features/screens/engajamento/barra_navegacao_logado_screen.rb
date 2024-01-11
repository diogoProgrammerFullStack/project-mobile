class BarraNavegacaoLogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def acessa_menu(menu)
    wait_element(:xpath, "//*[@text='#{menu}']").click
  end

  def acessa_tudo
    wait_element(:xpath, '//*[@text="Tudo"]').click
  end

  def valida_pedidos_compras
    expect(wait_element(:xpath, '//*[@text="Meus pedidos e compras"]')).to be_truthy
  end

  def valida_tela_escolha_uma_loja
    wait_element(:xpath, "//*[@text='Only this time']").click
    expect(wait_element(:xpath, '//*[@text="Selecione uma loja"]')).to be_truthy
  end 

end
