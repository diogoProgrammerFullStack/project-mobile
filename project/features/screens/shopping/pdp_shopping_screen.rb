class PdpShoppingScreen
  include RSpec::Matchers

  def valida_tela_pdp
    expect(wait_element(:xpath, '//*[@text="Detalhes do produto"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="Ofertas de:"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="São Paulo"]')).to be_truthy
  end

  def valida_foto_produto
    expect(wait_element(:id, 'br.com.carrefour.shop:id/image')).to be_truthy
  end

  def valida_titulo_produto(_produto)
    expect(wait_element(:id, 'br.com.carrefour.shop:id/description')).to be_truthy
  end

  def valida_preco_produto
    expect(wait_element(:id, 'br.com.carrefour.shop:id/price_tv')).to be_truthy
  end

  def valida_condicoes_pagamento
    scroll_vertical(4, :xpath,
                    '//*[@resource-id="br.com.carrefour.shop:id/expandable_header_title"][@text="Descrição do produto"]')
    expect(wait_element(:id, 'br.com.carrefour.shop:id/payment_options_pdp_tv')).to be_truthy
  end

  def validar_meio_de_pagamento(table)
    itens = table.hashes
    itens.each do |_pagamento|
      valor = iten['Pagamento '].to_s
      scroll_horizontal(3, :xpath, "//*[contains(@text, '#{condicao}')]", "//*[@text='American Express à vista']")
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts " teste: #{valor}"
    end
    
  end 

  def valida_btn_vou_levar
    expect(wait_element(:id, 'br.com.carrefour.shop:id/add_to_cart_button')).to be_truthy
  end

  def valida_vendido_entregue_por
    scroll_vertical(4, :xpath,
                    '//*[@resource-id="br.com.carrefour.shop:id/expandable_header_title"][@text="Descrição do produto"]')
    expect(wait_element(:id, 'br.com.carrefour.shop:id/shipping_options_pdp_tv')).to be_truthy
  end

  def btn_produto_sugestoes
    wait_element(:xpath,
                 '//androidx.recyclerview.widget.RecyclerView/android.view.ViewGroup[1]/android.widget.TextView').click
  end

  def valida_condicao_pagamento
    # O metodo scroll ja esta validando se o elemento esta presente na tela,se o elemento nao estive presente o teste quebra.
    #scroll_horizontal(3, :xpath, "//*[contains(@text, 'Cartão Carrefour à vista')]", "//*[@text='American Express à vista']", "//*[@text='Boleto Bancário à vista']")
    sleep 4
    @condicoes_pagamento = wait_element(:id, "br.com.carrefour.shop:id/payment_options_text")
    expect(@condicoes_pagamento.text).to eql "Condições de pagamento"
  end

  def btn_condicoes_pagamento
    click_element_when_it_clickable(:id, "br.com.carrefour.shop:id/payment_options_pdp_tv")
  end

  def valida_vendido_entregue_por_carrefour
    scroll_vertical(4, :xpath,
                    '//*[@resource-id="br.com.carrefour.shop:id/expandable_header_title"][@text="Descrição do produto"]')
    expect(wait_element(:id, 'br.com.carrefour.shop:id/delivered_by_tv')).to be_truthy
  end

  def valida_nome_loja
    expect(wait_element(:id, 'br.com.carrefour.shop:id/delivered_by_tv')).to be_truthy
  end

  def valida_garante_sua_compra
    scroll_vertical(1, :id, 'br.com.carrefour.shop:id/warranty_c4_tv')
    expect(wait_element(:id, 'br.com.carrefour.shop:id/warranty_c4_tv')).to be_truthy
  end

  def acessa_garante_sua_compra
    scroll_vertical(1, :id, 'br.com.carrefour.shop:id/warranty_c4_tv')
    wait_element(:id, 'br.com.carrefour.shop:id/warranty_c4_tv').click
  end

  def valida_modal_garante_sua_compra
    expect(wait_element(:id, 'br.com.carrefour.shop:id/btn_understood')).to be_truthy
    expect(wait_element(:id, 'br.com.carrefour.shop:id/ic_close')).to be_truthy
  end

  def valida_carrinho_produto_adicionado
    expect(wait_element(:xpath,
                        '//android.widget.GridView/android.view.View/android.view.View[2]')).to be_truthy
  end

  def acessa_vitrine_smartphones
    wait_element(:xpath, "//*[contains(@text, 'Smartphones')]")
  end

  def buscar_produto(produto)
    wait_element(:xpath, "//*[contains(@text, '#{produto}')]").click
  end
end
