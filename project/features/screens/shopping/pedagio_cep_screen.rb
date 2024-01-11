class PedagioCepScreen
  include RSpec::Matchers

  def cep_nao_informado
    expect(wait_element(:xpath, "//*[@text='São Paulo']")).to be_truthy
  end

  def validar_cep_padrao
    expect(wait_element(:xpath, "//*[@text='São Paulo']")).to be_truthy
  end

  def btn_shopping
    wait_element(:xpath, '//*[@text="Shopping"]').click
  end

  def valida_pedagio_cep
    expect(wait_element(:xpath, "//*[@text='Não sei meu Cep']")).to be_truthy
  end

  def cep_cliente
    wait_element(:xpath, '//*[@text="Ofertas de:"]').click
    wait_element(:xpath, "//android.widget.EditText").send_keys("04794000")
    wait_element(:xpath, '//*[@text="Buscar"]').click
  end

  def validar_cep_informado
    expect(wait_element(:xpath, "//*[@text='04794-000']")).to be_truthy
  end

  def apresenta_pegadio_cep
    cep = wait_element(:xpath, '//*[@text="Informe seu CEP para ver ofertas exclusivas da sua região"]')
    expect(cep.text).to eql "Informe seu CEP para ver ofertas exclusivas da sua região"
  end

  def botao_nao_sei_cep
    wait_element(:xpath, '//*[@text="Não sei meu Cep"]').click
  end

  def validar_webview_correios
    expect(wait_element(:xpath, '//android.webkit.WebView')).to be_truthy
  end

  def busca_cep
  
    btn_mercado_online = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.FrameLayout[1]/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.widget.LinearLayout/android.view.ViewGroup[2]/android.view.ViewGroup'
    btn_ok_confirm = '/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/androidx.appcompat.widget.LinearLayoutCompat/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.Button[1]'
    btn_radio_box = '//androidx.appcompat.widget.LinearLayoutCompat/androidx.cardview.widget.CardView[1]/android.view.ViewGroup/android.widget.RadioButton'
    wait_element(:xpath, btn_mercado_online).click
    wait_element(:xpath, btn_ok_confirm).click
    wait_element(:xpath, btn_radio_box).click
  end

  def input_cep_valid
    input_cep = '//*[@text="CEP"]'
    btn_buscar = '//*[@text="BUSCAR"]'
    wait_element(:xpath, input_cep).send_keys "06472005"
    wait_element(:xpath, btn_buscar).click
  end

  def return_cep
    get_cep = '//android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.widget.TextView[2]'
    return wait_element(:xpath, get_cep)
  end
end
