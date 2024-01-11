class LoginScreen
  include RSpec::Matchers
  # require_relative './wait.rb'
  # def secure_text_field_class
  #     ::Appium::Ios::XCUIELEMENT_TYPE_SECURE_TEXT_FIELD
  # end

  def input_email(email)
    wait_element(:id, 'br.com.carrefour:id/edtCredential').send_keys email
  end

  def input_senha(senha)
    sleep 1 # rccx
    wait_element(:xpath, '//*[@text="Senha"]').click
    wait_element(:xpath, '//*[@text="Senha"]').send_keys senha
    hide_keyboard
    wait_element(:id, 'br.com.carrefour:id/nextStepButton').click
    sleep 1 # rccx
  end

  def btn_continuar
    wait_element(:id, 'br.com.carrefour:id/nextStepButton').click
    sleep 1 # rccx
  end

  def login_efetuado
    expect(wait_element(:xpath, '//*[@text="Meu perfil"]')).to be_truthy
  end

  def btn_ok_vamos_la_ativo?
    expect(wait_element(:xpath, '//*[@text="Ok, vamos lá"]').enabled?).to be_falsey
  end

  def esqueci_senha
    wait_element(:xpath, '//*[@text="Esqueci minha senha, me ajuda?"]').click
  end

  def modal_senha
    expect(wait_element(:xpath, '//*[@text="Problemas com sua senha?"]')).to be_truthy
  end

  def mensagem_senha_errada
    expect(wait_element(:xpath, '//*[@text="Opa, a senha informada está incorreta ou expirada"]')).to be_truthy
  end

  def validar_botao_continuar
    expect(wait_element(:xpath, '//*[@text="CONTINUAR"]').enabled?).to be_falsey
  end

  def mensagem_opa_ocorreu_erro
    expect(wait_element(:xpath, '//*[@text="Ops, ocorreu um erro"]')).to be_truthy
  end

  def btn_voltar
    expect(wait_element(:xpath, '//*[@text="Qual sua senha?"]')).to be_truthy
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
  end

  def validar_tela_cadastre_se
    expect(wait_element(:id, 'br.com.carrefour:id/btnLoginDialog')).to be_truthy
  end

  def validar_quantidade_itens
    expect(wait_element(:xpath, '//*[@text="Ofertas da Semana"]')).to be_truthy
  end
end
