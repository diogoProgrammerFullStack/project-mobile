class ShoppingNativoScreen
    include RSpec::Matchers 

    def acessar_detalhe_produto(categoria, produto)
        wait_element(:xpath, "//*[@text='#{categoria}']").click
        wait_element(:xpath, "//*[contains(@text,'#{produto}')]").click
    end

    def adicionar_produto_carrinho
        wait_element(:id, "br.com.carrefour.shop:id/add_to_cart_button").click
    end

    def verificar_contador_carrinho
        $contador = wait_element(:id, "//*[@text='1']").text
    end

    def acessar_carrinho
        wait_element(:id, "br.com.carrefour.shop:id/image_view_cart").click
    end

    def voltar_tela_continuar_comprando_ate_subhome
        wait_element(:xpath, "//*[@content-desc='Continuar comprando']").click
        wait_element(:id, "br.com.carrefour.shop:id/back_arrow").click
        wait_element(:id, "br.com.carrefour.shop:id/cancel_button").click
    end

    def voltar_para_detalhes_do_pedido
        wait_element(:xpath, "//*[@content-desc='Continuar comprando']").click
    end

    def adicionar_quantidade_carrinho
        wait_element(:xpath, "//*[@content-desc='Aumentar a quantidade']").click
    end

    def diminiuir_quantidade_carrinho
        scroll_vertical_up(10, :xpath, '//*[@resource-id="item-quantity-change-decrement-312929262"]')
        wait_element(:xpath, '//*[@resource-id="item-quantity-change-decrement-312929262"]').click
    end

    def validar_quantidade_produtos_carrinho
        quantidade_atual = wait_element(:xpath, "//*[@text='2']").text
        expect($contador != quantidade_atual).to be_truthy
    end

    def remover_item
        wait_element(:xpath, '//*[@resource-id="item-remove-312929253"]').click
    end

    def escolher_produto
        wait_element(:xpath, '//*[@content-desc="Escolher produtos"]').click
    end

    def continuar_comprando
        wait_element(:xpath, '//*[@content-desc="Continuar comprando"]').click
    end

    def validar_valor_total
        expect(wait_element(:xpath, '//android.widget.GridView/android.view.View/android.view.View[4]')).to be_truthy
    end

    def recalcular_valor_total
        expect(wait_element(:xpath, '//android.widget.GridView/android.view.View/android.view.View[6]')).to be_truthy
    end

    def validar_tela_carrinho
        expect(wait_element(:xpath, '//*[@resource-id="cart-title"]')).to be_truthy
    end

    def validar_produto_adicionado
        expect(wait_element(:xpath, "//android.widget.GridView/android.view.View[1]")).to be_truthy
    end

    def esvaziar_carrinho
        wait_element(:xpath, '//*[@resource-id="empty-cart"]').click
    end

    def validar_carrinho_vazio
        expect(wait_element(:xpath, '//*[@text="Seu carrinho está vazio."]')).to be_truthy
    end

    def validar_detalhes_produto
        expect(wait_element(:id, "br.com.carrefour.shop:id/appCompatTextView5")).to be_truthy
    end

    def validacao_subhome_view
        expect(wait_element(:id, "br.com.carrefour:id/profile_title").displayed?)
    end

    def insert_number
        wait_element(:xpath, "//android.view.View/android.widget.EditText[2]").send_keys("174")
    end

    def flag_terms
        scroll_vertical(3, :xpath, "//android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.CheckBox")
        wait_element(:xpath, "//android.view.View/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View[3]/android.widget.CheckBox").click
    end

    def btn_go_delivery
        wait_element(:xpath, "//*[@text='IR PARA A ENTREGA']").click
    end

    def btn_got_to_payment
        wait_element(:xpath, "//*[@text='IR PARA O PAGAMENTO']").click
    end

    def finalizar_compra
        scroll_vertical(8, :xpath, '//*[@resource-id="cart-to-orderform"]')
        wait_element(:xpath, '//*[@resource-id="cart-to-orderform"]').click
    end

    def validar_tela_dados_pessoais
        scroll_vertical_up(5, :xpath, '//*[@text="Dados pessoais"]')
        expect(wait_element(:xpath, '//*[@text="Dados pessoais"]')).to be_truthy
    end

    def validar_tela_pagamento
        scroll_vertical_up(5, :xpath, '//android.widget.TextView[2][@text="Pagamento"]')
        expect(wait_element(:xpath, '//android.widget.TextView[2][@text="Pagamento"]')).to be_truthy
    end

    def validar_formas_pagamento
        scroll_vertical_up(10, :xpath, '//*[@text="Cartão de crédito"]')
        expect(wait_element(:xpath, '//*[@text="Cartão de crédito"]')).to be_truthy
        expect(wait_element(:xpath, '//*[@text="Cartão Carrefour"]')).to be_truthy
        expect(wait_element(:xpath, '//*[@text="Pix"]')).to be_truthy
        expect(wait_element(:xpath, '//*[@text="Boleto bancário"]')).to be_truthy
    end

    def editar_dados_pessoais(email, password)
        scroll_vertical_up(10, :xpath, '(//*[@content-desc="Editar"])[1]')
        wait_element(:xpath, '(//*[@content-desc="Editar"])[1]').click
        wait_element(:xpath, '//*[@content-desc="Adicionar um Cartão Presente Adicionar vale-presente"]').click
        wait_element(:xpath, '//android.widget.EditText[@resource-id="inputEmail"]').send_keys email
        wait_element(:xpath, '//*[@text="CONTINUAR"]').click
        wait_element(:xpath, '//*[@resource-id="inputPassword"]').send_keys password
        wait_element(:xpath, '//*[@text="CONTINUAR"]').click
    end

    def editar_entrega(email, password)
        scroll_vertical_up(10, :xpath, '(//*[@content-desc="Editar"])[2]')
        wait_element(:xpath, '(//*[@content-desc="Editar"])[2]').click
        wait_element(:xpath, '//*[@text="Modificar endereço selecionado"]').click
        wait_element(:xpath, '//android.view.View[2]/android.view.View/android.widget.Button[2]').click
        wait_element(:xpath, '//android.widget.EditText[@resource-id="inputEmail"]').send_keys email
        wait_element(:xpath, '//*[@text="CONTINUAR"]').click
        wait_element(:xpath, '//*[@resource-id="inputPassword"]').send_keys password
        wait_element(:xpath, '//*[@text="CONTINUAR"]').click
    end

    def validar_tela_editar_dados_pessoais
        expect(wait_element(:xpath, '//*[@resource-id="email-edit"]')).to be_truthy
    end

    def validar_tela_editar_entrega
        expect(wait_element(:xpath, '//*[@text="CEP *"]'))
    end
    
    def add_produto_carrinho_mais
        wait_element(:xpath, "//*[@content-desc='Aumentar a quantidade']").click
        wait_element(:xpath, "//android.view.View/android.view.View[4]/android.widget.Button").click
    end

    def retira_um_produto_carrinho
        wait_element(:xpath, "//*[@content-desc='Diminuir a quantidade']").click
    end
 
    def formas_de_pagamento(table)
        r = table.hashes
        r.each do |rr|
           valor = rr['pays'].to_s
        scroll_vertical_up(10, :xpath, "//*[@text='#{valor}']").to be_truthy
        end
    end
end
