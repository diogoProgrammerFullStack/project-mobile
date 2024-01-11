class FazerLoginDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def btn_fazer_login_ultimos_pedidos
    Appium::TouchAction.new.swipe(start_x: 518, start_y: 0.5, end_x: 518, end_y: 850).perform # scroll down
    wait_element(:xpath, '//*[@text="Fazer login"]').click
  end

  def btn_fazer_login
    wait_element(:xpath, '//*[@text="Entre ou cadastre-se"]').click
  end

  def modal_fazer_login
    expect(wait_element(:xpath, '//*[@text="ou acesse sua conta."]')).to be_truthy
  end
end
