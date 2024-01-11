class SubhomeShoppingScreen
  include RSpec::Matchers

  def exibe_fazer_login
    expect(wait_element(:id, 'br.com.carrefour.shop:id/2080702553')).to be_truthy
  end

  def scroll_produtos_patrocinados
    scroll_vertical(10, :xpath, "//*[@text='Produtos patrocinados']")
    expect(wait_element(:xpath, "//*[@text='Produtos patrocinados']")).to be_truthy
  end

  def subhome_shopping_banner_login
    scroll_vertical(10, :xpath, "//*[@text='Aproveite todas as ofertas e benefícios de ser cliente Carrefour.']")
    expect(wait_element(:xpath,
                        "//*[@text='Aproveite todas as ofertas e benefícios de ser cliente Carrefour.']")).to be_truthy
  end

  def rolar_tela_footer
    scroll_vertical_high(5, :xpath, '//*[@text="Regras das Promoções Carrefour"]')
  end

  def acessar_regras_promocoes
    wait_element(:xpath, '//*[@text="Regras das Promoções Carrefour"]').click
  end

  def acessar_todos_departamentos
    wait_element(:xpath, '//*[@text="Departamentos"]').click
  end

  def validar_modal_regras
    expect(wait_element(:xpath, "//*[contains(@text,'Regras')]")).to be_truthy
  end

  def validar_botao_subir
    expect(wait_element(:xpath, '//*[@text="subir"]')).to be_truthy
  end

  def rolar_scroll
    scroll_vertical(2, :xpath, '//*[@text="subir"]')
  end

  def validar_menu_departamentos
    expect(wait_element(:xpath, '//*[@text="Departamentos"]')).to be_truthy
  end

  def validar_sub_stories(table)
    storie = table.hashes
    storie.each do |stories|
      valor = stories['abas'].to_s
      expect(wait_element(:xpath, "//*[@text='#{valor}']")).to be_truthy
      puts "testes: #{valor}"
    end
  end
end
