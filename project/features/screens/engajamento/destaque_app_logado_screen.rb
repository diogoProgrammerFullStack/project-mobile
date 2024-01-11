class DestaqueAppLogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def acessa_minhas_recompensas
    find("Minhas Recompensas").click
  end

  def valida_minhas_recompensas
    expect(wait_element(:xpath, '//*[@text="Meu saldo"]')).to be_truthy
  end

  def valida_tela_scan_go
    expect(wait_element(:xpath, '//*[@text="Conheça o Scan&Go!"]')).to be_truthy
  end

  def valida_tela_cupons_exclusivos
    expect(wait_element(:xpath, '//*[@text="Cupons exclusivos"]')).to be_truthy
  end

  def valida_tela_mercado_logado
    wait_element(:xpath, '//*[@text="OK"]').click
    expect(wait_element(:xpath, '//*[@text="Bem vindo ao Mercado"]')).to be_truthy
  end

  def acessa_destaque_centro(destaque)
    scroll_horizontal(1, :xpath, "//*[@text='#{destaque}']", "//*[@text='Shopping']", "//*[@text='Mercado']")
    wait_element(:xpath, "//*[@text='#{destaque}']").click
  end

  def acessa_cybercook
    Appium::TouchAction.new.press(x: 936, y: 831).perform
  end
end
