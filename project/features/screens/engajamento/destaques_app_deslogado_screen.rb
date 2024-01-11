class DestaqueAppDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'
  def acessa_destaque(destaque)
    expect(wait_element(:xpath, "//*[@text='#{destaque}']")).to be_truthy
    wait_element(:xpath, "//*[@text='#{destaque}']").click
  end

  def valida_tela_mercado
    wait_element(:xpath, '//*[@text="OK"]').click
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
    expect(wait_element(:xpath, '//*[@text="Bem vindo ao Mercado"]')).to be_truthy
  end

  def valida_tela_shopping
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
    expect(wait_element(:xpath, '//*[@text="Shopping"]')).to be_truthy
  end

  def valida_tela_servicos
    wait_element(:xpath, '//*[@text="Serviços"]').click
    expect(wait_element(:xpath, '//*[@text="Serviços"]')).to be_truthy
  end

  def valida_tela_seleciona_loja
    driver.switch_to.alert.accept rescue

      expect(wait_element(:xpath, '//*[@text="Selecione uma loja"]')).to be_truthy
  end

  def valida_tela_cybercook
    expect(wait_element(:xpath, '//*[@text="CyberCook"]')).to be_truthy
  end

  def comecar
    wait_element(:xpath, '//*[@text="Começar"]').click
  end
end   
