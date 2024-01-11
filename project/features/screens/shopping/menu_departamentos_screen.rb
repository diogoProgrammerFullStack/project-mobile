class MenuDepartamentosScreen
    include RSpec::Matchers
    # require_relative './wait.rb'

def acessar_subhome_shopping
    expect(wait_element(:xpath, '//*[@text="Shopping"]')).to be_truthy
    wait_element(:xpath, '//*[@text="Shopping"]').click
    wait_element(:xpath, '//android.view.ViewGroup/android.widget.ImageView').click
end

def acessar_menu_shopping
    wait_element(:id, 'br.com.carrefour.shop:id/left_side_button').click
end

def valido_secao_departamentos(table)
    r = table.hashes
    r.each do |rr|
       valor = rr["menusDp"].to_s
       expect(wait_element(:xpath, "//*[@resource-id='br.com.carrefour.shop:id/department_list_item_title'][@text='#{valor}']")).to be_truthy
    puts "Submenus: #{valor}"
    end
end

def cancel_btn_opportunities_modal
    wait_element(:id, "br.com.carrefour.shop:id/btn_cancel").click
end

def confirm_btn_opportunities_modal
    wait_element(:id, "br.com.carrefour.shop:id/btn_continue").click
end

def btn_voltar_departamentos
    wait_element(:xpath, '//android.widget.ScrollView/android.view.ViewGroup/android.view.View').click
end

def valida_subhome_shopping
    expect(wait_element(:xpath, '//*[@text="Bem vindo ao"]')).to be_truthy
end

def acessar_departamento
    wait_element(:xpath, "//*[@text='Celulares e Smartphones']").click
end

def acessar_categoria_do_departamento
    wait_element(:xpath, "//*[@text='Celulares']").click
end

def valida_btn_voltar
    expect(wait_element(:xpath, "//android.widget.FrameLayout/android.view.ViewGroup/android.view.View")).to be_truthy
end

def valida_direcionamento_departamento_escolhido
    expect(wait_element(:xpath, "//*[@text='Celulares e Smartphones']")).to be_truthy
end

def valida_lista_departamento
    expect(wait_element(:xpath, "//*[@text='Ver Tudo de Celulares e Smartphones']")).to be_truthy
end

def valida_direcionamento_categoria_escolhida
    expect(wait_element(:id, "br.com.carrefour.shop:id/results_info_tv")).to be_truthy
end

def valida_mantem_departamentos
    expect(wait_element(:id, "br.com.carrefour.shop:id/other_options_title")).to be_truthy
end

def acessar_encontrar_lojas
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Encontrar lojas']")
    wait_element(:xpath, "//android.widget.TextView[@text='Encontrar lojas']").click
end

def acessar_historico_produtos
    wait_element(:xpath, "//android.widget.TextView[@text='Últimos produtos vistos']").click
end

def valida_historico_de_pedidos
    expect(wait_element(:xpath, '//*[@text="Meu histórico de navegação"]')).to be_truthy
end
end