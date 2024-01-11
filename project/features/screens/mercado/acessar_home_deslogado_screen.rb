class AcessarHomeDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def acessar_mercado_online
    wait_element(:xpath, '//*[@text="Mercado Online"]').click
  end

  def verificar_modal_cadastro
    #  comando que click no botao ok da modal  Confirma ter mais de 18 anos?
    # comando fechar modal Como deseja receber suas compras
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
  end

  def acessar_produto_mercado_online
    scroll_vertical(3, :xpath, '//*[contains(@text, "R$")]')
    wait_element(:xpath, '//*[contains(@text, "R$")]').click
  end

  def scroll_produtos_mercado_online_home
    expect(wait_element(:xpath, '//*[@text="Mercado Online"]')).to be_truthy
    # pegando a html do primeiro produto do elemento do mercado online.
    el_start = '//android.view.ViewGroup[2]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView[1]'
    # pegando a html do segundo  produto do elemento do mercado online.
    el_end = '//android.view.ViewGroup[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ImageView[1]'
    # pegando as coordenadas do primeiro elemento e segundo elemento.
    el_start = wait_element(:xpath, el_start)
    screen_x_start = el_start.location.x
    screen_y_start = el_start.location.y
    el_end = wait_element(:xpath, el_end)
    screen_x_end = el_end.location.x
    screen_y_end = el_end.location.y
    Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, end_x: screen_x_end,
                                  end_y: screen_y_end).perform
    expect(wait_element(:xpath, "//*[contains(@text,'R$')]")).to be_truthy
  end

  def acessar_shopping_home
    scroll_vertical(3, :xpath, "//*[@text='Shopping Online']")
    wait_element(:xpath, '//*[@text="Shopping Online"]').click
  end

  def scroll_produtos_shopping_online_home
    # #Acessando o primeiro produto do banner apos modal shopping online
    scroll_vertical(2, :xpath, "//*[@text='Shopping Online']")
    # #pegando a html do primeiro produto do elemento do mercado online.
    # el_start = "br.com.carrefour:id/2131363400"
    # #pegando a html do segundo  produto do elemento do mercado online.
    # el_end = "br.com.carrefour:id/2131364853"
    # el_start = find_element(:xpath, el_start)
    # screen_x_start = el_start.location.x
    # screen_y_start = el_start.location.y
    # el_end = find_element(:xpath, el_end)
    # screen_x_end = el_end.location.x
    # screen_y_end = el_end.location.y
    # scroll_horizontal_fixo(4, :id,"#{el_start}","#{el_end}")
    # Appium::TouchAction.new.swipe(start_x: screen_x_start, start_y: screen_y_start, end_x: screen_x_end, end_y: screen_y_end).perform

    expect(wait_element(:xpath, '//*[@text="Promo"]')).to be_truthy
  end

  def scroll_beneficios_meu_carrefour
    scroll_vertical(5, :xpath, "//*[@text='Benefícios Meu Carrefour']")
    wait_element(:xpath, "//*[@text='Ofertas especiais para clientes Meu Carrefour']").click
  end

  def acessar_produto_shopping_online
    # Acessando o primeiro produto do banner apos modal shopping online
    scroll_vertical(2, :xpath, "//*[@text='TV D-LED 32\"\ Philco PTV32T10ED HD Preta com Conversor Digital Integrado']")
    expect(wait_element(:xpath, '//*[@text="Shopping Online"]')).to be_truthy
    wait_element(:xpath, "//*[@text='TV D-LED 32\"\ Philco PTV32T10ED HD Preta com Conversor Digital Integrado']").click
  end

  def acessar_beneficios_meu_carrefour
    scroll_vertical(3, :xpath, "//*[@text='Benefícios Meu Carrefour']")
    wait_element(:xpath, "//*[@text='Benefícios Meu Carrefour']").displayed?
    wait_element(:xpath, "//*[@text='Benefícios Meu Carrefour']").click
  end

  def acessar_ofertas_meu_carrefour
    scroll_vertical(5, :xpath, "//*[@text='Benefícios Meu Carrefour']")
    wait_element(:xpath, '//*[@text="Ofertas especiais para clientes Meu Carrefou"]').click
  end

  def acessar_banner
    wait_element(:xpath, '//androidx.viewpager.widget.ViewPager').click
  end

  def validar_banner
    expect(wait_element(:xpath, '//*[@text="Cadastre-se"]')).to be_truthy
  end

  def valida_modal_cadastro
    expect(wait_element(:xpath, '//*[@text="Cadastre-se"]')).to be_truthy
  end

  def valida_ofertas_home
    expect(wait_element(:xpath, '//*[contains(@text, "R$")]')).to be_truthy
  end

  def valida_pagina_mercado
    expect(wait_element(:xpath, '//*[@text="Bem vindo ao Mercado"]')).to be_truthy
  end

  def valida_pag_detalhes_do_produto
    wait_element(:xpath, '//*[@text="Detalhes do produto"]').displayed?
    expect(wait_element(:xpath, '//*[@text="Detalhes do produto"]')).to be_truthy
  end

  def valida_pag_bedeficios_meu_carrefour
    expect(wait_element(:xpath,
                        '//*[@text="Cadastre-se gratuitamente e usufrua de benefícios exclusivos para clientes do #benefíciosMeuCarrefour!"]')).to be_truthy
  end

  def valida_bedeficios_meu_carrefour_home
    expect(wait_element(:xpath, '//*[contains(@text, "Cupons")]')).to be_truthy
  end

  def acessar_minhas_recompensas_home
    scroll_vertical(3, :xpath, "//*[@text='Minhas Recompensas']")
    expect(wait_element(:xpath, '//*[contains(@text, "Minhas Recompensas")]')).to be_truthy
    wait_element(:xpath, "//*[@text='Minhas Recompensas']").click
  end

  def btn_ok
    wait_element(:xpath, '//*[@text="OK"]').click
  end

  def btn_mais_tarde
    wait_element(:xpath, '//*[@value="Mais tarde"]').click
  end

  def validar_tela_produto
    expect(wait_element(:xpath, '//*[@label="Detalhes do produto"]')).to be_truthy
  end

  def scroll_recompensas
    scroll_vertical(10, :xpath, "//android.widget.TextView[@text='Cardápio de Recompensas']")
  end

  def validar_cardapio_recompensa
    expect(wait_element(:id, 'br.com.carrefour:id/2131364657')).to be_truthy
  end

  def acessa_recompensa
    wait_element(:xpath, "//*[@text='Entre ou cadastre-se']").click
  end

  def valida_tela_beneficios_meu_carrefour
    expect(wait_element(:xpath,
                        '//*[@text="Minhas Recompensas, Cupons & Ofertas Meu Carrefour Tudo em um só lugar!"]')).to be_truthy
  end

  def btn_entre_cadastre_se
    wait_element(:id, 'br.com.carrefour:id/sign_in_up_click_area').click
  end

  def btn_ver_todas
    wait_element(:xpath, "//android.widget.TextView[@text='Ver todas']").click
  end

  def acessa_cupons
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Cupons Exclusivos']")

    wait_element(:xpath, "//android.widget.TextView[@text='Cupons Exclusivos']").click
  end

  def btn_entre_cadastre_se_cupons
    scroll_vertical_high(5, :xpath, "//android.widget.TextView[@text='Cupons']")
    wait_element(:xpath, "//android.widget.TextView[@text='Cupons']").click
  end

  def btn_entre_cadastre_se_meu_cartao
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Veja limite, quando comprar e sua fatura']")
    expect(wait_element(:xpath, '//*[@text="Veja limite, quando comprar e sua fatura"]')).to be_truthy
    wait_element(:xpath, '//*[@text="Entrar ou cadastrar"]').click
  end

  def acessa_pra_voce_usar
    scroll_vertical(8, :xpath, "//android.widget.TextView[@text='Para você usar']")
    expect(wait_element(:xpath, '//*[@text="Para você usar"]')).to be_truthy
    wait_element(:xpath, "//android.widget.TextView[@text='Para você usar']").click
  end

  def validar_tela_para_voce_usar
    expect(wait_element(:xpath, '//*[@text="Encontre tudo aqui"]')).to be_truthy
  end

  def acessa_leitor
    scroll_vertical_high(5, :xpath, "//android.widget.TextView[@text='Leitor']")
    wait_element(:xpath, "//android.widget.TextView[@text='Leitor']").click
  end

  def valida_tela_leitor
    wait_element(:xpath, "//*[@text='Começar']").click
    begin
      driver.switch_to.alert.accept
    rescue StandardError
      expect(wait_element(:xpath, '//*[@text="Selecione uma loja"]')).to be_truthy
    end
  end

  def acessa_scan_go
    scroll_vertical(15, :xpath, "//android.widget.TextView[@text='Ofertas da loja']")
    wait_element(:xpath, "//*[@text='Scan&Go']").click
  end

  def acessa_cybercook
    scroll_vertical(10, :xpath, "//*[@text='CyberCook']")
    expect(wait_element(:xpath, '//*[@text="CyberCook"]')).to be_truthy
    wait_element(:xpath, "//*[@text='CyberCook']").click
  end

  def acessa_folhetos
    scroll_vertical(15, :xpath, "//android.widget.TextView[@text='Ofertas da loja']")
    wait_element(:xpath, "//*[@text='Folhetos']").click
  end

  def acessa_ofertas_da_loja
    scroll_vertical_high(5, :xpath, "//android.widget.TextView[@text='Ofertas da loja']")
    wait_element(:xpath, "//*[@text='Ofertas da loja']").click
  end

  def valida_tela_seleciona_uma_loja
    driver.switch_to.alert.accept
  rescue StandardError
    expect(wait_element(:id, 'br.com.carrefour:id/toolbarTitle')).to be_truthy
  end

  def btn_selecione_uma_loja
    scroll_vertical(15, :xpath, "//android.widget.TextView[@text='Ofertas da loja']")
    wait_element(:xpath, "//*[@text='Selecione uma loja']").click
  end

  def acessa_perguntas_frequentes
    scroll_vertical_high(7, :xpath, "//android.widget.TextView[@text='Fale com a Carina']")
    wait_element(:xpath, "//android.widget.TextView[@text='Perguntas frequentes']").click
  end

  def valida_tela_central_atendimento
    expect(wait_element(:xpath, '//*[@text="Perguntas frequentes"]')).to be_truthy
  end

  def validar_play_store
    text = (expect(wait_element(:xpath, '//*[@text="Cartão de crédito Carrefour"]')).to be_truthy)

    #  (expect(find_element(:xpath, '//*[@text="Google Play Store"]')).to be_truthy)
  end

  def acessa_fale_com_a_carina
    scroll_vertical_high(5, :xpath, "//android.widget.TextView[@text='Fale com a Carina']")
    wait_element(:xpath, "//android.widget.TextView[@text='Fale com a Carina']").click
  end

  def valida_tela_whatsapp
    expect(wait_element(:xpath,
                        '//*[@text="Olá! Eu sou a Carina, assistente virtual do Carrefour. Precisa de ajuda? Manda um Oi pra mim"]')).to be_truthy
  end

  def acessa_chat
    scroll_vertical_high(5, :xpath, "//*[@text='Acessar Chat']")
    wait_element(:xpath, "//*[@text='Acessar Chat']").click
  end

  def valida_tela_fale_conosco
    expect(wait_element(:xpath, '//*[@text="Fale conosco"]')).to be_truthy
  end
end
