class StoriesDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def validar_aba_tudo
    expect(find_element(:xpath, '//*[@text="Tudo"]')).to be_truthy
  end

  def validar_itens(table)
    itens = table.hashes
    puts itens
    itens.each do |item|
      valor = item['abas'].to_s
      scroll_horizontal_fixo(12, :xpath, "//*[@text='#{valor}']",
                             '//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.LinearLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.TextView[1]')
      puts " Abas disponiveis: #{valor}"
      expect(wait_element(:accessibility_id, "#{valor}")).to be_truthy
    end
  end

  def validar_itens_vitrine(table)
    itens = table.hashes
    puts itens
    itens.each do |item|
      valor = item['abas'].to_s
      scroll_horizontal_fixo(5, :xpath, "//*[@text='#{valor}']",
                             '//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.LinearLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.TextView[1]')
      puts " Abas disponiveis: #{valor}"
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
    end
  end

  def validar_itens_deslogado(table)
    itens = table.hashes
    puts itens
    itens.each do |item|
      valor = item['abas'].to_s
      scroll_horizontal_fixo(3, :xpath, "//*[@content-desc='#{valor}']",
                             '//hierarchy/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.widget.LinearLayout[1]/android.widget.FrameLayout[1]/android.view.ViewGroup[1]/android.view.ViewGroup[1]/android.widget.LinearLayout[1]/android.widget.HorizontalScrollView[1]/android.widget.LinearLayout[1]/android.widget.LinearLayout[1]/android.widget.TextView[1]')
      expect(find_element(:xpath, "//*[@content-desc='#{valor}']")).to be_truthy
      puts " Abas disponiveis: #{valor}"
    end
  end
end
