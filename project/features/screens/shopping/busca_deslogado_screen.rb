class BuscaDeslogadoScreen 
  include RSpec::Matchers
  # require_relative './wait.rb'
 
  def busca_produto(product)
    wait_element(:id, "br.com.carrefour:id/text_view_search").click
    wait_element(:id, "br.com.carrefour:id/search_src_text").send_keys product
  end
  
  def produto_encontrado?(product_name)
    produto = wait_element(:id, "br.com.carrefour:id/productTitleView")
    expect(produto.text == product_name).to be true
  end

  def valida_busca_produto_marcas(string)
    expect(wait_element(:xpath, "//*[@text='#{string}']")).to be_truthy
  end
end