class AcessoAoShoppingScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def home_is_visible
    expect(find_element(:accessibility_id, 'Início')).to be_truthy
  end

  def icone_shopping
    wait_element(:xpath, "//*[@text='Shopping']").click
  end

  def validar_cep
    expect(find_element(:xpath, '//*[@resource-id="br.com.carrefour:id/2131363057"]')).to be_truthy
  end

  def tabbar
    wait_element(:xpath, '//android.widget.FrameLayout[@content-desc="Tudo"]').click
  end

  def icone_shopping_tabbar
    wait_element(:xpath,
                 '//*[@resource-id="br.com.carrefour:id/2131362306"]/androidx.appcompat.widget.LinearLayoutCompat[3]/android.widget.ImageView[1]').click
  end

  def icone_shopping_logado
    wait_element(:xpath, '//*[@text="Shopping"]').click
  end

  def subhome_shopping
    wait_element(:id, 'br.com.carrefour.shop:id/iv_close').click
    expect(find_element(:id, 'br.com.carrefour.shop:id/header_title_label')).to be_truthy
  end

  def valido_titulo_subhome_shopping
    expect(find_element(:id, "br.com.carrefour.shop:id/header_title_label")).to be_truthy
  end

  def valida_ultimos_produtos
    expect(find_element(:xpath, "//*[@text='Últimos produtos vistos']")).to be_truthy
  end

  def validar_cep
    expect(find_element(:xpath, "//*[contains(@text,'Informe seu CEP')]")).to be_truthy
    find_element(:xpath, '//android.widget.ImageView').click
  end

  def icone_widget_Vitrine
    wait_element(:xpath, '//*[@text="Shopping"]').click
  end

  def tabbar
    wait_element(:xpath, '//android.widget.FrameLayout[@content-desc="Tudo"]').click
  end

  def icone_shopping_tabbar
    wait_element(:xpath, '//*[@text="Shopping"]').click
  end

  def cep_shopping_recuperado
    expect(find_element(:xpath, "//*[@text='Ofertas de:']")).to be_truthy
  end

  def produtos_shopping_visto
    expect(find_element(:xpath, '//*[@text="Últimos produtos vistos"]')).to be_truthy
  end
end
