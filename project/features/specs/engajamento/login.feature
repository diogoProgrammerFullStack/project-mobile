#language: pt

@login2
@regressivo_all
Funcionalidade: Login de usuário
Eu como usuário do aplicativo do Carrefour
Quero poder efetuar o meu login no app
Para poder efetuar minhas compras no aplicativo

@regressivoLogin @CT001 @passed
Cenario: Login de conta cadastrada
Quando usuário click no botao cadastre-se
Dado que o usuário digite e-mail já cadastrado "batata@uorak.com"
Quando toca em Ok, vamos lá
E digita senha cadastrada "123@Mudar"
E toca em Continuar
Então será diricionado para tela da home logado

@regressivoLogin @CT0150 @passed
Cenario: e-mail inválido
Dado que o usuário esteja na tela de Login
Quando for inserido um e-mail inválido "teste@teste"
Então o app não irá habilitar o botão Ok, vamos lá!

@regressivoLogin @CT0152 @passed
Cenario: E-mail em branco
Dado que o usuário esteja na tela de Login
Quando não inserir o e-mail ""
Então o app não irá habilitar o botão Ok, vamos lá!

@regressivoLogin @CT0153 @passed
Cenario: e-mail incompleto
Dado que o usuário esteja na tela de Login
Quando inserir o e-mail incompleto "teste@"
Então o app não irá habilitar o botão Ok, vamos lá!

@regressivoLogin @CT0154 @passed
Cenario: Esqueci minha senha, me ajuda?
Dado que o usuário no fluxo de Login "batata@uorak.com"
Quando acessa Esqueci minha senha, me ajuda?
Então exibe modal Problemas com sua senha?

@regressivoLogin @CT0155 @passed
Cenario: Senha invalida
Dado que o usuário no fluxo de Login "batata@uorak.com"
Quando digita senha invalida "0000000"
Então exibe mensagem Opa, a senha informada está incorreta.

@regressivoLogin @CT0156 @passed
Cenario: senha em branco
Dado que o usuário esteja na tela Sua Senha "batata@uorak.com"
Quando não inserir a senha ""
Então não poderá seguir para proxima tela

@regressivoLogin @CT0157 @passed
Cenario: senha incompleta
Dado que o usuário no fluxo de Login "batata@uorak.com"
Quando inserir a senha incompleta "123@Muda"
Então exibe mensagem Opa, a senha informada está incorreta.

@regressivoLogin @CT0158 @passed
Cenario: Acessar Volta na tela Sua senha
Dado que o usuário esteja na tela Sua Senha "batata@uorak.com"
Quando toca em Voltar
Então o app deve retornar para a Home
