class VitrinesCarroselDeslogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'

  def validar_vitrines_carrosel(validarVitrineCarrosel)
    expect(wait_element(:xpath, "//*[@text='#{validarVitrineCarrosel}']")).to be_truthy
  end

  def buscar_item(item)
    scroll_vertical(2, :xpath, "//android.widget.TextView[@text='#{item}']")
    expect(wait_element(:xpath, "//android.widget.TextView[@text='#{item}']")).to be_truthy
  end

  def validar_abas_carrosel(table)
    carrosel = table.hashes
    carrosel.each do |carrosel|
      valor =carrosel["abas"].to_s
      scroll_vertical(2, :xpath, "//android.widget.TextView[@text='#{valor}']")
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end

  def validar_acougue_e_peixaria(table)
    acougue = table.hashes
    acougue.each do |acougue_e_peixaria|
      valor =acougue_e_peixaria["abas"].to_s
          scroll_horizontal_fixo(4, :xpath, "//*[@text='#{valor}']","//*[@text='Carne Suína']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end

  
  def validar_vitrines_bebidas(table)
    bebida = table.hashes
    bebida.each do | bebida|
      valor = bebida["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Cervejas']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end



  def validar_bebe_infantil(table)
  infantil = table.hashes
  infantil.each do |infantil|
    valor = infantil["abas"].to_s
      scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Cervejas']")
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end


  def validar_congelados(table)
    congelados = table.hashes
    congelados.each do |congelados|
      valor = congelados["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Legumes e Vegetais']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
        puts "testes: #{valor}"
      end
  end


  def validar_frios(table)
    #frios e Laticionios
    frios = table.hashes
    frios.each do |frios|
      valor = frios["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Manteiga e Margarina']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
        puts "testes: #{valor}"
      end
  end

  def validar_perfumaria(table)
    #frios e Laticionios
    perfumaria= table.hashes
    perfumaria.each do | perfumaria|
      valor =  perfumaria["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Cuidados Pessoais']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end


  def validar_padaria_matinais(table)
    #frios e Laticionios
    padaria= table.hashes
    padaria.each do | padaria|
      valor = padaria["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Mel, Geléias e Patês']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end


  def validar_pet_care(table)
    #frios e Laticionios
    pet =table.hashes
    pet.each do | pet|
      valor = pet["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Adestramento Pet']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end


  def validar_pratos_prontos(table)
    #frios e Laticionios
    pratos =table.hashes
    pratos.each do |pratos|
      valor = pratos["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Pratos Prontos']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end


  def validar_utilidades_domesticas(table)
    #frios e Laticionios
  utilidade=table.hashes
  utilidade.each do |utilidade|
      valor = utilidade["abas"].to_s
          scroll_horizontal_fixo(3, :xpath, "//*[@text='#{valor}']", "//*[@text='Itens para Festa']")
        expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end
  

  def acessar_vitrine(vitrine)
    scroll_vertical(2, :xpath, "//android.widget.TextView[@text='#{vitrine}']")
    wait_element(:xpath, "//*[@text='#{vitrine}']").click
  end

  def validar_vitrine(vitrine)
    scroll_vertical(20, :xpath, "//android.widget.TextView[@text='#{vitrine}']")
    expect(wait_element(:xpath, "//*[@text='#{vitrine}']")).to be_truthy
  end

  def acessar_vitrine(vitrine)
    scroll_vertical(20, :xpath, "//android.widget.TextView[@text='#{vitrine}']")
    expect(wait_element(:xpath, "//*[@text='#{vitrine}']")).to be_truthy
    find_element(:xpath, "//*[@text='#{vitrine}']").click
  end
end
