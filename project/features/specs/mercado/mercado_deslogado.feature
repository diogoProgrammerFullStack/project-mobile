#language: pt

@subhomedeslogado
@regressivo_all
Funcionalidade: Acessar subhome deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com com a sub home
Para visualizar todas opções do app

@regressivoMercadoLogado @CT0167 @PC001 @passed
Cenario: Login APP pelo menu Meu perfil
Dado que o usuário esteja no app
Quando acessa o menu Meu perfil
E toca em Entrar ou Cadastrar-se
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoMercadoLogado @CT0168 @PC002 @passed
Cenario: Login do app pelo icone Cadastre-se
Dado que o usuário esteja no app
Quando acessa o icone Cadastre-se
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoMercadoLogado @CT0169 @PC003 @failed
Cenario: Login do app pelo Saldo total
Dado que o usuário esteja no app
Quando acessa Saldo total
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoMercadoLogado @CT0170 @PC004  @passed
Cenario:Login pelo destaque Cadastre-se!
Dado que o usuário esteja no app
Quando acessa o destaque Cadastre-se!
Então exibe modal Cadastre-se ou acesse sua conta
