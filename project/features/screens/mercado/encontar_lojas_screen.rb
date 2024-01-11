class EncontrarLojasScreen
  include RSpec::Matchers

  def acessar_encontrar_lojas
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Encontrar Lojas']")
    wait_element(:xpath, "//android.widget.TextView[@text='Encontrar Lojas']").click
  end

  def acessar_central_de_atendimento
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Central de Atendimento']")
    wait_element(:xpath, "//android.widget.TextView[@text='Central de Atendimento']").click
  end

  def acessar_cupons_exclusivos
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Cupons Exclusivos']")
    wait_element(:xpath, "//android.widget.TextView[@text='Cupons Exclusivos']").click
  end

  def valida_mensagem_direcionamento_pagina_principal
    expect(wait_element(:xpath,
                        "//android.widget.TextView[contains(@text,'Você será redirecionado para a Página')]")).to be_truthy
  end

  def btn_voltar
    wait_element(:xpath, '//android.widget.ImageButton[1]').click
  end

  def valida_mensagem_não_disponível(element)
    check_element(:xpath, "//*[@text='#{element}']").nil?
  end

  def clicar_continuar
    wait_element(:xpath, "//*[@text='CONTINUAR']").click
  end

  def acessar_encontrar_lojas_novamente
    wait_element(:xpath, "//*[@text='CONTINUAR']").click
    # driver.switch_to.alert.accept rescue
    #   Appium::Driver::Error::NoAlertOpenErro
    # wait_element(:id, 'com.android.permissioncontroller:id/permission_allow_foreground_only_button').click
    wait_element(:id, 'br.com.carrefour:id/backButton').click
    # wait_element(:id, 'br.com.carrefour:id/btnLater').click
    # wait_element(:accessibility_id, 'Comprar').click
    wait_element(:accessibility_id, 'Corredores').click
    scroll_vertical(3, :xpath, "//android.widget.TextView[@text='Encontrar Lojas']")
    wait_element(:xpath, "//android.widget.TextView[@text='Encontrar Lojas']").click
  end

  def acessar_campo_novamente(element)
    wait_element(:xpath, "//*[@text='CONTINUAR']").click
    driver.back
    wait_element(:accessibility_id, 'Corredores').click
    scroll_vertical(3, :xpath, "//android.widget.TextView[@text='#{element}']")
    wait_element(:xpath, "//android.widget.TextView[@text='#{element}']").click
  end

  def validar_nao_avisar_novamente(element)
    wait_element(:xpath, "//*[@text='#{element}']").click
  end

  def seleciona_checkbox_não_avisar_novamente
    wait_element(:xpath, "//android.widget.CheckBox[@text='Não avisar novamente']").click
  end

  def seleciona_loja
    # driver.switch_to.alert.accept rescue
    # Appium::Driver::Error::NoAlertOpenErro
    # wait_element(:id, 'com.android.permissioncontroller:id/permission_allow_foreground_only_button').click
    wait_element(:xpath, '//android.view.ViewGroup[1]/android.widget.ImageView').click
  end

  def btn_cancelar
    wait_element(:id, 'br.com.carrefour:id/modalCancelButton').click
  end

  def btn_continuar
    wait_element(:id, 'br.com.carrefour:id/modalContinueButton').click
  end

  def valida_detalhes_loja
    expect(wait_element(:xpath, "//*[@text='Horário de funcionamento']")).to be_truthy
  end

  def valida_corredor
    expect(wait_element(:xpath, "//*[@text='Corredores']")).to be_truthy
  end

  def valida_faq
    expect(wait_element(:xpath, "//*[@text='Central de Ajuda']")).to be_truthy
  end

  def valida_cupons_exclusivos
    expect(wait_element(:xpath, "//*[@text='Cupons exclusivos']")).to be_truthy
  end

  def valida_tela_meu_carrefour
    expect(wait_element(:xpath, "//*[@text='Ofertas da loja']")).to be_truthy
  end
end
