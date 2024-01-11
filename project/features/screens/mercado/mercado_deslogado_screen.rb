class MercadoDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def access_perfil
    wait_element(:xpath, '//*[@content-desc="Perfil"]').click
  end

  def access_entrar_ou_cadastrar
    wait_element(:xpath, '//*[@text="ENTRAR OU CADASTRAR-SE"]').click
  end

  def btn_entrar_ou_cadastrar
    wait_element(:id, 'br.com.carrefour:id/2131363999').click
  end

  def access_icon_cadastre_se
    wait_element(:id, 'br.com.carrefour:id/sign_in_up_click_area').click
  end

  def access_saldo_total
    wait_element(:xpath, '//*[@text="Saldo total"]').click
  end

  def access_destaque_cadastre_se
    wait_element(:xpath, "//*[@text='Cadastre-se']").click
  end

  def valida_modal(mensagem)
    expect(wait_element(:xpath, "//*[@text='#{mensagem}']")).to be_truthy
  end
end
