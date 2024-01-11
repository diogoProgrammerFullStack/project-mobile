class CarrinhoDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'~

  def acessa_carrinho
    wait_element(:xpath, '//android.widget.ImageView[@content-desc="carrinho"]').click
  end
end
