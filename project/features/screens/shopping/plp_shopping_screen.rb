class PlpShoppingScreen
  include RSpec::Matchers

  def acessa_plp(plp)
    sleep 3
    wait_element(:xpath, "//*[contains(@text, '#{plp}')]").click
  end

  def valida_lista_produto(plp)
    expect(wait_element(:xpath, "//*[contains(@text, '#{plp}')]")).to be_truthy
  end

  def valida_tela_plp
    expect(wait_element(:xpath, '//*[@text="Buscar produtos e marcas"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="0"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="São Paulo"]')).to be_truthy
  end

  def acessa_ver_mais_patrocinados
    scroll_vertical(3, :xpath, "//*[contains(@text,'Produtos patrocinados')]")
    wait_element(:xpath, "//*[contains(@text,'Produtos patrocinados')]").click
  end

  def valida_tela_produtos_patrocinados
    expect(wait_element(:xpath, "//*[contains(@text,'Produtos patrocinados')]")).to be_truthy
  end

  def valida_btn_filtro
    expect(wait_element(:xpath, '//*[@text="Filtrar"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="(1)"]')).to be_truthy
  end

  def acionar_opcao(opcao)
    wait_element(:xpath, "//*[contains(@text, '#{opcao}')]").click
  end

  def valida_filtrar(filtrar)
    expect(wait_element(:xpath, "//*[contains(@text, '#{filtrar}')]")).to be_truthy
  end

  def valida_ordenar(ordenar)
    expect(wait_element(:xpath, "//*[contains(@text, '#{ordenar}')]")).to be_truthy
  end

  def btn_fechar
    wait_element(:id, "br.com.carrefour.shop:id/btnClose").click
  end

  def seleciona_filtro
    wait_element(:xpath, "//*[@text = 'Categoria']").click
    wait_element(:xpath, "//*[@text = 'Smartwatches']").click
    wait_element(:id, "br.com.carrefour.shop:id/btnApplyFilters").click
  end

  def valida_btn_aplicar_filtro
    expect(wait_element(:id, "br.com.carrefour.shop:id/btnApplyFilters")).to be_truthy
  end

  def valida_btn_limpar_filtro
    expect(wait_element(:id, "br.com.carrefour.shop:id/btnCleanFilters")).to be_truthy
  end

  def btn_limpar_filtro
    wait_element(:id, "br.com.carrefour.shop:id/btnCleanFilters").click
  end

  def btn_aplica_filtro(aplicar)
    wait_element(:xpath, "//*[contains(@text, '#{aplicar}')]").click
  end

  def valida_tela_filtrada
    sleep 8
    @result = wait_element(:id, "br.com.carrefour.shop:id/tvCounterFilter")
    expect(@result.text).to eq ("(2)")
  end

  def btn_filtrar
    sleep 5
    wait_element(:xpath, '//*[@text="Filtrar"]').click
  end
end
