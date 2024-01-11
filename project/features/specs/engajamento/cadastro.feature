#language: pt
@cadastronoapp
@regressivo_all
Funcionalidade: Realizar Cadastro no app

# @regressivoCadastro @CT0062 @failed
# Cenario: Cadastrar nova conta
# Dado que o usuário esteja no fluxo de cadastro para cadastrar uma nova conta
# Quando for preenchido todos os campos das telas de cadastro corretamente "Teste" "Test" "61999999999" "Abc1234@"
# E finalizar cadastro
# Então é direcionada uma mensagem de confirmação de cadastro ao e-mail cadastrado

@regressivoCadastro @CT0063 @passed
Cenario: Login com E-mail não cadastrado
Dado que o usuário esteja na tela de Cadastro
Quando for inserido um E-mail não cadastrado na base de dados "test@teste.com"
Então o app deve avançar para tela de informar CPF para cadastro

@regressivoCadastro @CT0064 @passed
Cenario: Opção Mais tarde
Dado que o usuário esteja na tela de Cadastro
Quando for clicado em Mais tarde
Então usuario volta para tela que estava anteriormente.

@regressivoCadastro @CT0065 @passed
Cenario: Cadastro com novo e-mail e CPF já cadastrado
Dado que o usuário insira novo e-mail "test@teste.com"
Quando inserir CPF já cadastrado "35329070899"
Então exibe modal com mensagem Verifique que seu CPF está atrelado a estes e-mails:

@regressivoCadastro @CT0066 @passed
Cenario: Continuar o login com um e-mail antigo
Dado que o CPF do usuario já esteja associada a outro e-mail "test@teste.com" "35329070899"
Quando toca em fazer login
Então volta para tela anterior para realizar o login novamente.

@regressivoCadastro @CT0067 @passed
Cenario:Login com CPF não cadastrado
Dado que o usuário esteja na tela de Login
Quando for inserido um CPF não cadastrado na base de dados "test@teste.com" "11266339094"
Então o app deve avançar para primeira tela de cadastro

@regressivoCadastro @CT0068 @passed
Cenario: CPF inválido
Dado que o usuário esteja na tela de Login
Quando for inserido um CPF inválido "test@teste.com" "10000000001"
E clica em "Ok, vamos lá"
Então o app irá apresentar mensagem de CPF inválido

@regressivoCadastro @CT0069 @passed
Cenario: CPF incompleto
Dado que o usuário esteja na tela de Cadastro
Quando inserir CPF incompleto "test@teste.com" "00000000"
E clica em "Ok, vamos lá"
Então o app irá apresentar mensagem de CPF inválido

@regressivoCadastro @CT0070 @passed
Cenario: Contato com suporte
Dado que o usuário esteja na tela de validação de CPF "test@teste.com"
Quando clica em “Entre em contato com nosso suporte“
Então deve ser exibido o modal com os contatos do Suporte

@regressivoCadastro @CT0071 @passed
Cenario:Como usamos seus dados
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na tela de Informe seus dados pessoais
E toca em Como usamos seus dados?
Então será direcionado para a tela Seus dados protegidos

@regressivoCadastro @CT0072 @passed
Cenario: Entre em contato com o SAC
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na tela Qual o seu e-mail e telefone "Teste" "Test"
E toca em Entre em contato com o SAC
Então deve ser exibido o modal com os contatos do SAC

@regressivoCadastro @CT0073 @passed
Cenario:Como usamos seus dados na tela Qual o seu e-mail e telefone
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na tela Qual o seu e-mail e telefone "Teste" "Test"
E toca em Como usamos seus dados?
Então será direcionado para a tela Seus dados protegidos

@regressivoCadastro @CT0074 @passed
Cenario: Ofertas exclusivas
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na tela de Ofertas Exclusivas "Teste" "Test" "61999999999"
Então deve ser possível flegar, desflegar as opção compartilhar dados.

@regressivoCadastro @CT0075 @passed
Cenario:Como usamos seus dados na tela Ofertas exclusivas
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na tela de Ofertas Exclusivas "Teste" "Test" "61999999999"
E toca em Como usamos seus dados?
Então será direcionado para a tela Seus dados protegidos

@regressivoCadastro @CT0076 @passed
Cenario: Não aceite dos termos legais e cancelamento do cadastro
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
E não deu o aceite nos termos legais "Teste" "Test" "61999999999"
Quando for clicado em Avançar
Então deve exibido um modal de Atenção com as opções Ok, entendi! e Cancelar Cadastro

@regressivoCadastro @CT0077 @passed
Cenario: Cancelar dentro do Modal de não aceite dos termos legais
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
E não deu o aceite nos termos legais e avançou "Teste" "Test" "61999999999"
Quando for clicado em Cancelar cadastro nos dois modais seguintes
Então o app deve retornar para a Home

@regressivoCadastro @CT0078 @passed
Cenario: “Ok, entendi" dentro do Modal de não aceite dos termos legais
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
E não deu o aceite nos termos legais e avançou "Teste" "Test" "61999999999"
Quando for clicado em Ok, entendi
Então o app deve retornar para a tela de aceite dos Termos legais

@regressivoCadastro @CT0079 @passed
Cenario: definir senha
Dado que o usuário esteja no fluxo de cadastro "test@teste.com" "11266339094"
Quando chegar na escolha da senha "Teste" "Test" "61999999999"
Então o app deve aceitar senhas que atendam todas as regras do semáforo "Abc1234@"
E a confirmação da senha deve coincidir com a primeira senha inserida "Abc1234@"
