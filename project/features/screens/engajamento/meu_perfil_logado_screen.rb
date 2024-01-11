class MeuPerfilLogadoScreen
  include RSpec::Matchers
  # require_relative './wait.rb'
  def btn_avatar
    wait_element(:xpath, '//android.widget.LinearLayout/android.view.ViewGroup/android.widget.ImageView[2]').click
  end

  def btn_confirmar_logout
    wait_element(:xpath, "//*[@text='Vamos lá']").click
  end

  def btn_seleciona_avatar
    wait_element(:xpath, '//android.widget.FrameLayout[2]').click
  end

  def btn_salvar
    wait_element(:id, 'br.com.carrefour:id/bottomSave').click
  end

  def btn_editar_perfil
    wait_element(:xpath, '//*[@text="Editar meu perfil"]').click
  end

  def valida_tela_editar_perfil
    expect(wait_element(:xpath, '//*[@text="Editar Perfil"]')).to be_truthy
  end

  def btn_data_nascimento
    wait_element(:xpath,
                 '//android.widget.RelativeLayout[2]/android.widget.RelativeLayout/android.widget.TextView[2]').click
  end

  def seleciona_data_nascimento_valida
    wait_element(:id, 'br.com.carrefour:id/birthdateField').click
    wait_element(:id, 'br.com.carrefour:id/birthdateField').send_keys '30/12/1988'
  end

  def seleciona_data_nascimento_invalida
    wait_element(:id, 'br.com.carrefour:id/birthdateField').click
    wait_element(:id, 'br.com.carrefour:id/birthdateField').send_keys '0000'
    # wait_element(:xpath, '//android.widget.ImageButton[@content-desc="Next month"]').click
    # wait_element(:xpath, '//android.view.View[@text="7"]').click
    # wait_element(:xpath, '//android.widget.Button[@text="OK"]').click
  end

  def btn_ok_pode_salvar
    wait_element(:xpath, '//*[@text="Ok, pode salvar"]').click
  end

  def valida_mensagem_data_invalida
    expect(wait_element(:id, 'br.com.carrefour:id/textinput_error')).to be_truthy
  end

  def btn_telefone
    wait_element(:xpath, '//*[@text="Telefone"]').click
  end

  def campo_telefone
    wait_element(:id, 'br.com.carrefour:id/text_input_end_icon').click
  end

  def txt_telefone
    wait_element(:id, 'br.com.carrefour:id/bottomSave').click
  end

  def txt_telefone_inv
    wait_element(:xpath, '//android.widget.EditText').click
    wait_element(:xpath, '//android.widget.EditText').clear
    wait_element(:id, 'br.com.carrefour:id/bottomSave').click
  end

  def validation_tel_inv
    expect(wait_element(:xpath, '//*[@text="Telefone inválido."]')).to be_truthy
  end

  def txt_telefone_enereço(telefone)
    wait_element(:xpath, "//android.widget.EditText[@text='Telefone']").send_keys telefone
  end

  def modal_telefone_alterado
    expect(wait_element(:xpath, '//*[@text="Telefone alterado"]')).to be_truthy
  end

  def valida_mensagem_telefone_invalido
    expect(wait_element(:xpath, '//*[@text="Telefone inválido."]')).to be_truthy
  end

  def ofertas_e_promocoes
    scroll_vertical(5, :id, 'br.com.carrefour:id/layout_how_we_use_your_data')
  end

  def central_de_ajuda
    scroll_vertical(5, :id, 'br.com.carrefour:id/menuVersionBuild')
    wait_element(:id, 'br.com.carrefour:id/central_help_view').click
  end

  def acessar_termos_condicoes
    scroll_vertical(5, :id, 'br.com.carrefour:id/menuVersionBuild')
    wait_element(:xpath, "//*[@text='Termos e Condições']").click
  end

  def acessar_como_usamos_seus_dados
    scroll_vertical(3, :xpath, "//*[@text='Como usamos os seus dados?']")
    wait_element(:xpath, "//*[@text='Como usamos os seus dados?']").click
  end

  def flegar_seleciona_todas_opcoes
    wait_element(:id, 'br.com.carrefour:id/cb_selectAll').click
  end

  def valida_flegar
    wait_element(:xpath, '//android.widget.CheckBox[2]').checked?
    wait_element(:xpath, '//android.widget.CheckBox[3]').checked?
    wait_element(:xpath, '//android.widget.CheckBox[4]').checked?
    wait_element(:xpath, '//android.widget.CheckBox[5]').checked?
  end

  def btn_cancela_minha_conta
    wait_element(:xpath, '//*[@text="Cancelar minha conta"]').click
  end

  def valida_tela_meus_cupons
    expect(wait_element(:xpath, '//*[@text="Selecione uma loja"]')).to be_truthy
  end

  def validar_tela_personalizar_experiencia
    expect(wait_element(:xpath, '//*[@text="Personalizar experiência"]')).to be_truthy
  end

  def valida_tela_meus_pedidos_e_compras
    expect(wait_element(:xpath, '//*[@text="Pedidos e compras"]')).to be_truthy
  end

  def valida_tela_meus_enderecos
    expect(wait_element(:xpath, '//*[@text="Meus endereços"]')).to be_truthy
  end

  def btn_meus_enderecos
    wait_element(:xpath, '//*[@text="Meus endereços"]').click
  end

  def btn_novo_endereco
    wait_element(:xpath, '//*[@text="Novo endereço"]').click
  end

  def txt_nome_endereco(nomeEndereco)
    wait_element(:xpath, "//android.widget.EditText[@text='Nome do Endereço']").send_keys nomeEndereco
  end

  def txt_cep(cep)
    wait_element(:xpath, "//android.widget.EditText[@text='CEP']").send_keys cep
    wait_element(:xpath, "//android.widget.TextView[@text='Casa']").click
    scroll_vertical(5, :xpath, "//android.widget.Button[@text='Continuar']")
  end

  def txt_endereco
    wait_element(:xpath, '//XCUIElementTypeTable/XCUIElementTypeCell[6]/XCUIElementTypeTextField[1]').click
  end

  def txt_nome_do_endereco(nome)
    wait_element(:xpath, "//android.widget.EditText[@text='Nome']").send_keys nome
  end

  def txt_numero(numero)
    wait_element(:xpath, "//android.widget.EditText[@text='Número']").send_keys numero
  end

  def txt_complemento(complemento)
    wait_element(:xpath, "//android.widget.EditText[@text='Complemento']").send_keys complemento
  end

  def txt_ponto_referencia(pontoDeReferencia)
    wait_element(:xpath, "//android.widget.EditText[@text='Ponto de referência']").send_keys pontoDeReferencia
  end

  def valida_tela_endereco
    expect(wait_element(:xpath, '//*[@text="Casa"]')).to be_truthy
  end

  def btn_tres_pontos
    wait_element(:xpath, '//androidx.cardview.widget.CardView/android.view.ViewGroup/android.widget.ImageButton').click
  end

  def btn_editar_endereco
    wait_element(:xpath,
                 '//androidx.cardview.widget.CardView/android.view.ViewGroup/android.widget.ImageButton[2]').click
  end

  def valida_tela_inserir_seus_dados
    expect(wait_element(:xpath, '//*[@text="Insira seus dados"]')).to be_truthy
  end

  def btn_excluir
    wait_element(:xpath,
                 '//androidx.cardview.widget.CardView/android.view.ViewGroup/android.widget.ImageButton[1]').click
  end

  def valida_excluir_endereco
    expect(wait_element(:xpath, '//*[@text="Endereço excluído."]')).to be_truthy
  end

  def valida_tela_opiniao_app
    expect(wait_element(:xpath, '//*[@text="Por favor verifique os campos com *"]')).to be_truthy
  end

  def btn_politica_e_privacidade
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='Política de Privacidade']")
    wait_element(:xpath, "//android.widget.TextView[@text='Política de Privacidade']").click
  end

  def tocar_em(botao)
    scroll_vertical(5, :xpath, "//android.widget.TextView[@text='#{botao}']")
    wait_element(:xpath, "//android.widget.TextView[@text='#{botao}']").click
  end

  def validar_tela_home_deslogado
    expect(wait_element(:xpath, '//*[@text="Cadastre-se"]')).to be_truthy
  end

  def btn_cliente
    wait_element(:xpath, '//*[@text="Cliente"]').click
  end

  def btn_bloqueio
    scroll direction: 'down', distance: '0.5'
    wait_element(:xpath, '//*[@text="Quero solicitar a anonimização/bloqueio/eliminação dos meus dados"]').click
  end

  def valida_tela_meu_perfil
    expect(wait_element(:xpath, '//*[@text="Meu perfil"]')).to be_truthy
  end

  def btn_editar_perfil
    wait_element(:xpath, '//*[@text="Editar perfil"]').click
  end

  def valida_tela_editar_perfil
    expect(wait_element(:xpath, '//*[@text="CPF"]')).to be_truthy
  end

  def btn_novo_nome
    wait_element(:xpath, '//*[@text="Nome completo"]').click
  end

  def informar_novo_nome(nome)
    wait_element(:xpath, '//android.widget.EditText').clear
    wait_element(:xpath, '//android.widget.EditText').send_keys nome
  end

  def valida_alteraceos_salvas
    expect(wait_element(:id, 'br.com.carrefour:id/title')).to be_truthy
  end

  def btn_alterar_senha
    wait_element(:xpath, '//*[@text="Nome completo"]').click
  end

  def txt_senha_atual
    wait_element(:xpath, '//*[@text="Senha atual"]').send_keys('123@Mudar')
  end

  def txt_nova_senha
    wait_element(:xpath, '//*[@text="Senha"]').send_keys('123@Mudar')
  end

  def txt_confirma_nova_senha
    wait_element(:xpath, '//*[@text="Confirme sua senha"]').send_keys('123@Mudar')
  end

  def valida_senha_alterada
    expect(wait_element(:xpath, '//*[@text="Senha alterada com sucesso"]')).to be_truthy
  end

  def validar_tela_Meus_Cupons
    expect(wait_element(:xpath, '//*[@text="Meus Cupons Ativos"]')).to be_truthy
  end
end
