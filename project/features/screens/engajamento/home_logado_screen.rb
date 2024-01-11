class HomeLogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def validar_tela_minhas_recompensas
    expect(wait_element(:xpath, '')).to be_truthy
  end

  def valida_tela_beneficios_meu_carrefour_logado
    expect(wait_element(:xpath, '//*[@text="Você já economizou"]')).to be_truthy
  end

  def validar_banner_acionado
    expect(wait_element(:xpath, '//*[@text="Tudo"]')).to be_truthy
  end

  def acessa_cartao_carrefour
    scroll_vertical_medium(5, :id, 'br.com.carrefour:id/goIn')
    wait_element(:id, 'br.com.carrefour:id/goIn').click
  end
end
