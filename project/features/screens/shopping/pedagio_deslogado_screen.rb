class PedagioDeslogadoScreen 
  include RSpec::Matchers
  # require_relative './wait.rb'

  def btn_receber_em
    wait_element(:xpath, '//*[@text="Retirar em:"]').click
  end

  def btn_receba_em_casa
    wait_element(:xpath, '//android.widget.RadioButton').click
  end

  def inserir_cep(cep)
    elemento = wait_element(:xpath, '//*[@text="CEP"]')
    wait_element(:xpath, '//*[@text="CEP"]').click
    wait_element(:xpath, '//*[@text="CEP"]').send_keys cep
    elemento.send_keys(press_keycode(7))
    hide_keyboard
  end
  
  def informar_cep
    wait_element(:xpath, '//*[@text="CEP"]').send_keys('06226-070')
  end

  def btn_ok_vamos_la
    wait_element(:id, "br.com.carrefour:id/btnLoginDialog").click
  end
end