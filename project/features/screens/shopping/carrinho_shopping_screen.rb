class CarrinhoShoppingScreen
  include RSpec::Matchers

  def acessa_carrinho
    wait_element(:xpath, '//android.view.ViewGroup[2]/android.view.ViewGroup/android.view.View[2]').click
  end

  def valida_tela_carrinho
    expect(wait_element(:xpath, '//*[@text="Meu Carrinho"]')).to be_truthy
  end

  def verificar_contador_carrinho
    expect(wait_element(:xpath, '//android.view.View[@content-desc="Aumentar a quantidade"]')).to be_truthy
  end

  def adicionar_produto
    scroll_vertical(2, :xpath, "//*[@text='Melhores ofertas']")
    wait_element(:xpath, "//*[contains(@text,'R$')]").click
    wait_element(:xpath, "//*[@text='Vou levar']").click
  end

  def validar_atualizar_carrinho
    item_qnt1 = wait_element(:xpath, '//android.view.View[1]/android.view.View[6]').text
    wait_element(:xpath, '//android.view.View[@content-desc="Aumentar a quantidade"]').click
    item_qnt2 = wait_element(:xpath, '//android.view.View[1]/android.view.View[6]').text
    puts "Quantidade 1=#{item_qnt1} Quantidade 2=#{item_qnt2}"
    expect(item_qnt1 != item_qnt2).to be_truthy
  end
end
