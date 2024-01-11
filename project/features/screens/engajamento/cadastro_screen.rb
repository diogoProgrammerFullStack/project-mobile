require 'faker'

class CadastroScreen
  include RSpec::Matchers

  # require_relative './wait.rb'

  def validar_informar_cpf
    expect(wait_element(:xpath, '//*[@text="Para começar, precisamos do seu CPF"]')).to be_truthy
  end

  def btn_finalizar_cadastro
    hide_keyboard
    wait_element(:xpath, '//*[@text="Finalizar cadastro"]').click
  end

  def btn_mais_tarde
    wait_element(:xpath, '//*[@text="Mais tarde"]').click
  end

  def tela_principal
    expect(wait_element(:xpath,
                        '//XCUIElementTypeWindow/XCUIElementTypeOther[3]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[1]/XCUIElementTypeOther[2]/XCUIElementTypeButton[1]')).to be_truthy
  end

  def input_cpf(cpf)
    expect(wait_element(:xpath, '//*[@text="Para começar, precisamos do seu CPF"]')).to be_truthy
    wait_element(:xpath, '//android.widget.EditText').send_keys cpf
  end

  def valida_modal_cpf_atrelado
    expect(wait_element(:xpath, '//*[@text="Verificamos que seu CPF está atrelado a estes e-mails:"]')).to be_truthy
  end

  def valida_cpf_invalido
    expect(wait_element(:xpath, '//*[@text="CPF inválido"]')).to be_truthy
  end

  def btn_ok_vamos_la_tela_cpf
    wait_element(:xpath, '//*[@text="Ok, vamos lá"]').click
  end

  def validar_conta_cadastrada
    expect(wait_element(:xpath, "//*[@text='Verificação de identidade']")).to be_truthy
  end

  def validar_tela_cadastro_01
    expect(wait_element(:xpath, "//*[@text='Cadastro 1/5']")).to be_truthy
  end

  def cpf_invalido
    expect(wait_element(:xpath, "//*[@text='Cpf inválido']")).to be_truthy
  end

  def btn_ok_vamos_la_ativo?
    expect(wait_element(:xpath, '//*[@text="Ok, vamos lá!"]').enabled?).to be_falsey
  end

  def btn_entre_em_contato
    wait_element(:xpath, '//*[@text="Entre em contato com o nosso suporte"]').click
  end

  def modal_problemas_com_sua_conta
    expect(wait_element(:xpath, '//*[@text="Problemas na sua conta?"]')).to be_truthy
  end

  def valida_tela_informe_seus_dados
    expect(wait_element(:xpath, '//*[@text="Informe seus dados pessoais para se cadastrar."]')).to be_truthy
  end

  def btn_fazer_login
    wait_element(:xpath, '//*[@text="Fazer login"]').click
  end

  def btn_como_usamos_seus_dados
    wait_element(:xpath, '//*[@text="Como usamos os seus dados?"]').click
  end

  def validar_tela_dados_protegidos
    expect(wait_element(:xpath, '//*[@text="Seus dados protegidos"]')).to be_truthy
  end

  def input_nome(nome)
    wait_element(:xpath, '//*[@text="Nome"]').click
    driver.action.send_keys(nome).perform
    # wait_element(:xpath, '//*[@text="Nome"]').send_keys nome
  end

  def input_email(email)
    wait_element(:xpath, '//*[@text="E-mail"]').click
    wait_element(:xpath, '//*[@text="E-mail"]').send_keys email
  end

  def input_sobreNome(sobreNome)
    wait_element(:xpath, '//*[@text="Sobrenome"]').click
    wait_element(:xpath, '//*[@text="Sobrenome"]').send_keys sobreNome
  end

  def input_dataNasc
    wait_element(:xpath, '//*[@text="Data de Nascimento"]').send_keys('11/08/1999')
    hide_keyboard
  end

  def input_confirma_email(email)
    wait_element(:xpath, '//*[@text="Confirme seu e-mail"]').click
    wait_element(:xpath, '//*[@text="Confirme seu e-mail"]').send_keys email
  end

  def btn_avancar
    wait_element(:xpath, '//*[@text="Avançar"]').click
  end

  def validar_tela_qual_seu_email_telefone
    expect(wait_element(:xpath, '//*[@text="Qual o seu e-mail e  telefone?"]')).to be_truthy
  end

  def input_telefone(telefone)
    wait_element(:xpath, '//*[@text="Telefone"]').click
    wait_element(:xpath, '//*[@text="Telefone"]').send_keys telefone
    hide_keyboard
  end

  def btn_contato_sac
    wait_element(:xpath, '//*[@text="Entre em contato com o SAC"]').click
  end

  def validar_tela_ofertas_exclusivas
    expect(wait_element(:xpath, '//*[@text="Ofertas Exclusivas"]')).to be_truthy
  end

  def chk_box_compartilhar_dados
    expect(wait_element(:xpath, '//android.widget.CheckBox').checkable?).to be_truthy
  end

  def validar_tela_regulamentos
    expect(wait_element(:xpath, '//*[@text="Regulamento"]')).to be_truthy
  end

  def modal_atencao
    expect(wait_element(:xpath, '//*[@text="Ok, entendi!"]')).to be_truthy
    expect(wait_element(:xpath, '//*[@text="Cancelar cadastro"]')).to be_truthy
  end

  def btn_cancelar_cadastro
    wait_element(:xpath, '//*[@text="Cancelar cadastro"]').click
  end

  def btn_ok_entendi
    wait_element(:xpath, '//*[@text="Ok, entendi!"]').click
  end

  def btn_chk_box_termos
    wait_element(:xpath, '//android.widget.CheckBox').click
  end

  def input_cpf_faker
    expect(wait_element(:xpath, '//*[@text="Para começar, precisamos do seu CPF"]')).to be_truthy
    wait_element(:xpath, '//android.widget.EditText').send_keys Faker::CPF.number
  end

  def input_email_faker
    email = Faker::Internet.free_email
    wait_element(:xpath, '//*[@text="Digite seu e-mail"]').click
    wait_element(:xpath, '//*[@text="Digite seu e-mail"]').send_keys email
  end

  def input_senha(senha)
    wait_element(:xpath, '//*[@text="Senha"]').click
    wait_element(:xpath, '//*[@text="Senha"]').send_keys senha
  end

  def input_confirmar_senha(senha)
    wait_element(:xpath, '//*[@text="Confirme sua senha"]').click
    wait_element(:xpath, '//*[@text="Confirme sua senha"]').send_keys senha
  end

  def valida_modal_contato_sac
    expect(wait_element(:xpath,
                        '//*[@text="Entre em contato com o nosso atendimento atráves dos telefones:"]')).to be_truthy
  end
end
