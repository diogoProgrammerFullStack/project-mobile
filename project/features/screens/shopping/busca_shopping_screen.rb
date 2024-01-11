class BuscaShoppingScreen
  include RSpec::Matchers

  def btn_busca_shopping
    wait_element(:xpath, "//*[@text='Buscar produtos e marcas']").click
  end

  def input_buscacelular(produto)
    wait_element(:id, 'br.com.carrefour:id/search_src_text').click
    wait_element(:id, 'br.com.carrefour:id/search_src_text').send_keys produto
    wait_element(:xpath,
                 '//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView').click
  end

  def input_buscaTv(produto)
    wait_element(:xpath, '//*[@text="Pesquise por produtos ou marcas"]').click
    wait_element(:xpath, '//*[@text="Pesquise por produtos ou marcas"]').send_keys produto
    wait_element(:id, 'br.com.carrefour.shop:id/2080702680').click
  end

  def valida_sugestoes_departamentos
    expect(wait_element(:xpath, '//*[@text="Sugestões"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="Departamentos"]')).to be_truthy
  end

  def btn_produto_sugestoes
    wait_element(:xpath, "//*[contains(@text, 'TV')]").click
  end

  def valida_tela_pdl
    expect(wait_element(:xpath, '//*[@text="Detalhes do produto"]')).to be_truthy
  end

  def valida_pagina_lista_produto
    expect(wait_element(:xpath, "//*[contains(@text, 'Carrefour')]")).to be_truthy
  end

  def valida_ultimas_busca(elemento)
    expect(wait_element(:xpath, "//*[contains(@text, '#{elemento}')]")).to be_truthy
  end

  def valida_ultimas_buscas
    expect(wait_element(:xpath, '//*[@label="smartphone"]')).to be_truthy
  end

  def valida_tela_execao
    expect(wait_element(:xpath, "//*[contains(@label, 'Ops! Não encontramos resultados para')]")).to be_truthy
  end

  def input_busca(produto)
    wait_element(:id, "br.com.carrefour:id/search_src_text").send_keys produto
  end

  def valida_sugestoes_departamentos
    expect(wait_element(:xpath, '//*[@text="Sugestões"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="Departamentos"]')).to be_truthy
  end

  def btn_produto_sugestoes
    wait_element(:xpath, '//*[contains(@text, "samsung")]').click
  end

  def valida_tela_pdl
    expect(wait_element(:xpath, '//*[@text="Detalhes do produto"]')).to be_truthy
  end

  def btn_produto_departamento
    wait_element(:xpath, '//*[@text="tvs"]').click
  end

  def valida_pagina_lista_produto
    expect(wait_element(:xpath, "//*[contains(@text, 'TVs')]")).to be_truthy
  end

  def valida_ultimas_busca(elemento)
    expect(wait_element(:xpath, "//*[contains(@text, '#{elemento}')]")).to be_truthy
  end

  def valida_ultimas_buscas
    expect(wait_element(:xpath, '//*[contains(@text, "smartphone")]')).to be_truthy
  end

  def valida_tela_execao
    expect(wait_element(:xpath, "//*[contains(@text, 'Ops! Não encontramos resultados para')]")).to be_truthy
  end
end
