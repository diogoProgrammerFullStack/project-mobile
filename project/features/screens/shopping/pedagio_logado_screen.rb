class PedagioLogadoScreen 
    include RSpec::Matchers
    # require_relative './wait.rb'

    def valida_modal_pedagio_cep
      expect(wait_element(:xpath, '//*[@text="Qual o seu CEP?"]')).to be_truthy
    end

    def valida_modal_pedagio_cep_logado
      expect(wait_element(:id, "br.com.carrefour:id/constraintContent")).to be_truthy
    end

    def inform_zip_code
      expect(wait_element(:id, "br.com.carrefour:id/text_view_cep")).to be_truthy
    end

    def btn_inserir_cep
      wait_element(:xpath, '//*[@text="Informe seu CEP"]').click
    end 

    def btn_receber_em_cep
      wait_element(:id, "br.com.carrefour:id/title_cep").click
    end

    def btn_buscar_cep
      wait_element(:id, "br.com.carrefour:id/buttonBuscarCep").click
    end

    def click_informa_cep
      wait_element(:id, "br.com.carrefour:id/title_cep").click
    end

    def informar_cep_valido
      wait_element(:id, "br.com.carrefour:id/dialog_inputEdit_cep").send_keys('01310-930')
    end

    def btn_fecha_modal_cep
      wait_element(:id, "br.com.carrefour:id/btnClose").click
    end

    def btn_fecha_modal_menor_cep_iv
      wait_element(:id, "br.com.carrefour.shop:id/iv_close").click
    end
    
    def informar_cep_invalido
      wait_element(:id, "br.com.carrefour:id/dialog_inputEdit_cep").send_keys('00000-000')
    end

    def acessa_endereco_retornado
      wait_element(:xpath, '//*[@text="Receber em:"]').click
    end

    def valida_cep_padrao(local)
      expect(wait_element(:xpath, "//*[@text='#{local}']")).to be_truthy
    end

    
  end