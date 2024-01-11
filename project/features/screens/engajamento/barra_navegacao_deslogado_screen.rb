class BarraNavegacaoDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def acessa_comprar
    wait_element(:accessibility_id, 'Comprar').click
  end

  def acessa_leitor
    wait_element(:accessibility_id, 'Leitor').click
  end

  def acessa_perfil
    wait_element(:accessibility_id, 'Perfil').click
  end

  def acessa_tudo
    wait_element(:accessibility_id, 'Tudo').click
  end

  def validar_tela_leitor
    expect(wait_element(:xpath, '//*[@text="Consulte os preços"]')).to be_truthy
  end

  def valida_tela_meu_perfil
    expect(wait_element(:xpath, '//*[@text="Meu perfil"]')).to be_truthy
  end

  def valida_tela_tudo
    expect(wait_element(:xpath, '//*[@text="Encontre tudo aqui"]')).to be_truthy
  end
end
