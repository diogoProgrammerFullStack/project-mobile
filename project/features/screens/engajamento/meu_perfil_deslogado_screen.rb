class MeuPerfilDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'
  def btn_meus_cupons
    wait_element(:xpath, '//*[@text="Meus cupons"]').click
  end

  def validar_tela_logado
    expect(wait_element(:xpath, '//*[@text="Meu perfil"]')).to be_truthy
  end

  def btn_cartao_carrefour
    wait_element(:xpath, '//*[@text="Cartão Carrefour"]').click
  end

  def validar_app_carrefour
    Appium::Core::Wait.until(timeout: 10, message: 'timeout') do
      expect(wait_element(:xpath, '//android.widget.Button[contains(@text,"Sign in")]')).to be_truthy
    end
  rescue StandardError
    Appium::Core::Wait.until(timeout: 10, message: 'timeout') do
      expect(wait_element(:xpath, '//*[contains(@text, "Cartão de crédito Carrefour")]')).to be_truthy
    end
  end

  def validar_play_store
    expect(wait_element(:xpath, '//*[contains(@text,"Google Play")]')).to be_truthy
  end

  def btn_pedidos_e_compras
    wait_element(:xpath, '//*[@text="Pedidos e compras"]').click
  end

  def toca_em(elemento)
    wait_element(:xpath, "//*[@text='#{elemento}']").click
  end

  def validar_tela_central_de_ajuda
    expect(wait_element(:xpath, '//*[@text="Central de Ajuda"]')).to be_truthy
  end

  def validar_tela_termos_de_uso
    expect(wait_element(:xpath, '//*[@text="Termos de uso"]')).to be_truthy
  end

  def validar_tela_politica_de_privacidade
    expect(wait_element(:xpath, '//*[@text="Política de Privacidade"]')).to be_truthy
  end

  def validar_tela_sobre_app
    expect(wait_element(:xpath, '//*[@text="Sobre o App"]')).to be_truthy
  end

  def arrasta_meu_perfil
    elemento = wait_element(:xpath, '//*[@text="Meus endereços"]')
    swipe(start_x: 450, start_y: 567, delta_x: 468, delta_y: 1750)
  end
end
