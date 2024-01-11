#language: pt
@barranvegacaodeslogado
@regressivo_all
Funcionalidade: Barra de navegação deslogado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com a barra de navegação
Para visualizar mais opções

@regressivoDeslogado @CT0035 @passed
Cenario: Acesso Comprar
Dado que o usuario esteja deslogado no app
Quando acessa Comprar
Então será direcionado para Mercado

@regressivoDeslogado @CT0036 @passed
Cenario: Acesso Leitor
Dado que o usuario esteja deslogado no app
Quando acessa Leitor
Então será direcionado para Selecione uma loja

@regressivoDeslogado @CT0037 @passed
Cenario: Acesso Perfil
Dado que o usuario esteja deslogado no app
Quando acessa Perfil
Então será direcionado para Meu perfil

@regressivoDeslogado @CT0038 @passed
Cenario: Acesso Tudo
Dado que o usuario esteja deslogado no app
Quando acessa Tudo
Então exibe modal Encontre tudo aqui

@regressivoDeslogado @CT0039 @passed
Cenario: Acesso ao Mercado
Dado que o usuario esteja deslogado no app
Quando acessa o destaque do "Mercado"
Então será direcionado para Mercado
