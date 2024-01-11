class CommunsScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def home_is_visible
    Appium::Core::Wait.until(timeout: 60, message: 'timeout') { find_element(:xpath, '//*[@text="Saldo total"]') }
    expect(wait_element(:xpath, '//*[@text="Saldo total"]')).to be_truthy
  end

  def acessa_mercado
    wait_element(:xpath, '//*[@text="Mercado"]').click
    wait_element(:xpath, '//*[@text="OK"]').click
    wait_element(:xpath, '//*[@resource-id="br.com.carrefour:id/btnClose"]').click
  end

  def acessa_mercado_logado
    wait_element(:xpath, '//*[@text="Mercado"]').click
    wait_element(:xpath, '//*[@text="OK"]').click
  end

  def validar_mensagem(msg)
    mensagem = wait_element(:xpath, "//*[@text='#{msg}']")
    expect(mensagem.text == msg).to be true
  end

  def acessa_sub_home
    wait_element(:id, 'br.com.carrefour:id/2131365313').click
    wait_element(:id, 'br.com.carrefour:id/2131362078').click
    wait_element(:id, 'br.com.carrefour:id/2131362270').click
  end

  def acessa_sub_home_logado
    wait_element(:xpath, '//*[@text="Mercado"]').click
    wait_element(:xpath, '//*[@text="OK"]').click
  end

  def acessa_corredores
    wait_element(:xpath, '//*[@text="Mercado"]').click
    wait_element(:xpath, '//*[@text="OK"]').click
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
    wait_element(:accessibility_id, 'Corredores').click
  end

  def acessar_corredor(corredor)
    scroll_vertical(10, :xpath, "//*[@text='#{corredor}']")
    wait_element(:xpath, "//*[@text='#{corredor}']").click
    sleep(1)
    wait_element(:xpath, "//*[@text='#{corredor}']").click
  end

  def acessar_vitrine_intermediarias(vitrine)
    scroll_vertical(10, :xpath, "//*[@text='#{vitrine}']")
    wait_element(:xpath, "//*[@text='#{vitrine}']").click
    wait_element(:xpath, "//*[@text='#{vitrine}']").click
  end

  def acessar_vitrine(vitrine)
    scroll_vertical(10, :xpath, "//*[@text='#{vitrine}']")
    wait_element(:xpath, "//*[@text='#{vitrine}']").click
  end

  def acessar_vitrine_primeiras(vitrine)
    scroll_vertical(5, :xpath, "//*[@text='#{vitrine}']")
    wait_element(:xpath, "//*[@text='#{vitrine}']").click
  end

  def arrasta(x, y, x1, y1)
    expect(wait_element(:xpath,
                        '//*[@resource-id="br.com.carrefour:id/2131365460"]/android.view.ViewGroup[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/androidx.recyclerview.widget.RecyclerView[1]')).to be_truthy
    swipe(start_x: x, start_y: y, end_x: x1, end_y: y1)
  end

  def clica_em(element)
    scroll_vertical(10, :xpath, "//*[@text='#{element}']")
    wait_element(:xpath, "//*[@text='#{element}']").click
  end

  def clica_em_titulo(element)
    scroll_vertical(10, :xpath, "//*[@text='#{element}']")
    wait_element(:xpath, "//*[@text='#{element}']").click
  end

  def navega_destaques(elemento)
    scroll_horizontal(5, :xpath, "//*[@text='#{elemento}']", "//*[@text='Shopping']", "//*[@text='Mercado']")
  end

  def scroll_departamentos(elemento)
    scroll_vertical(10, :xpath, "//*[@text='#{elemento}']")
  end

  def valida_plp
    expect(wait_element(:xpath, "//*[contains(@text,'Vinhos')]")).to be_truthy
  end

  def valida_plp_ofertas
    expect(wait_element(:xpath, "//*[contains(@text,'Tudo')]")).to be_truthy
  end
end
