class CorredoresDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def validar_vitrine(table)
    itens = table.hashes
    itens.each do |iten|
      valor = iten["abas"].to_s
      scroll_horizontal_fixo(0, :xpath, "//*[@text='#{valor}']")
      # "//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.LinearLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]")
      puts "teste '#{valor}'"
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
    end
  end

  def validar_vitrines
    expect(wait_element(:xpath, '//*[@text="Corredores"]')).to be_truthy
  end

  def validar_tela_vitrine
    expect(wait_element(:xpath, '//*[@text="Mercearia"]')).to be_truthy
  end
  
  def arrasta_corredor
    swipe(start_x: 1027, start_y: 882, end_x: 1027, end_y: 441)
  end

end
