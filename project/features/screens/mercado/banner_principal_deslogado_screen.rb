class BannerPrincipalDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def validar_banner
    expect(wait_element(:xpath, '//*[@text="Bem vindo ao Mercado"]')).to be_truthy
  end

  def arrastar_banner(x, y, x1, y1)
    swipe(start_x: x, start_y: y, end_x: x1, end_y: y1)
  end

  def validar_demais_banners
    expect(wait_element(:xpath, '//*[@resource-id="br.com.carrefour:id/2131363610"]')).to be_truthy
  end
end
