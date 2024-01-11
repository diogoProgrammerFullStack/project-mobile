class HomeScreen 
  include RSpec::Matchers
  # require_relative './wait.rb'

  def access_market_home
    wait_element(:xpath, '//*[@text="Comprar"]').click
    wait_element(:xpath, '//*[@text="OK"]').click
    wait_element(:xpath, '//*[@resource-id="br.com.carrefour:id/2131362366"]').click
  end

  def search_product(product)
    wait_element(:xpath, '//*[@text="Buscar produtos e marcas"]').click
    wait_element(:id, 'br.com.carrefour:id/2131364560').send_keys product
  end

  def product_found?(product_name)
    produto = wait_element(:id, 'br.com.carrefour:id/2131364310')
    expect(produto.text == product_name).to be true
  end
end