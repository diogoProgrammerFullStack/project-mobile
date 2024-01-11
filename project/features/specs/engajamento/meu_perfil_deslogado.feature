#language: pt

@acessarperfildeslogado
@regressivo_all
Funcionalidade: Acessar Perfil deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com o meu perfil
Para visualizar mais opções

@regressivoDeslogadoMeuPerfil @CT0171 @passed
Cenario: Acessar cupons deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E toca em "Meus cupons"
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoDeslogadoMeuPerfil @CT0172 @passed
Cenario: Acesso ao cartão Carrefour com app instalado
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"
Quando acessa o menu Meu perfil
E toca em "Cartão Carrefour"
E toca em "Continuar"
Então será direcionado para app do Cartão de crédito Carrefour

@regressivoDeslogadoMeuPerfil @CT0174 @passed
Cenario: Acessar Pedidos e compras deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E toca em "Pedidos e compras"
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoDeslogadoMeuPerfil @CT0175 @passed
Cenario: Acessar Meus Endereços deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E toca em "Meus endereços"
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoDeslogadoMeuPerfil @CT0176 @passed
Cenario: Acessar Sua opnião sobre o App deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E navego pelo meu perfil
E toca em "Sua opinião sobre o App"
Então exibe modal Cadastre-se ou acesse sua conta

@regressivoDeslogadoMeuPerfil @CT0177 @passed
Cenario: Acessar Central de ajuda deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E navego pelo meu perfil
E toca em "Central de ajuda"
Então será direcionado para tela de Central de Ajuda

@regressivoDeslogadoMeuPerfil @CT0178 @passed
Cenario: Acessar Termos de Uso deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E navego pelo meu perfil
E toca em "Termos e Condições"
Então será direcionado para tela de Termos e Condições

@regressivoDeslogadoMeuPerfil @CT0179 @passed
Cenario: Acessar Política de Privacidade deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E navego pelo meu perfil
E toca em "Política de Privacidade"
Então será direcionado para tela de Política de Privacidade

@regressivoDeslogadoMeuPerfil @CT0180 @passed
Cenario: Acessar Sobre o App deslogado
Dado que o usuario esteja deslogado no app
Quando acessa o menu Meu perfil
E navego pelo meu perfil
E toca em "Sobre o App"
Então será direcionado para tela Sobre o App
