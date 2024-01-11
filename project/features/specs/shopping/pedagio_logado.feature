#language: pt

@pedagiologado
@regressivo_all
Funcionalidade: Visualização de Pedágio
Contexto:
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"

@regressivo @CT0212 @passed @passed_shopping
Cenario: Vizualizar pedágio na sub home
Quando acessa a sub home logado
Então deve visualizar informe seu cep

@regressivo @CT0213 @passed @passed_shopping
Cenario: Pedágio - Modal de pedágio de CEP
Quando acessa a sub home logado
E clica em informe seu cep
Então deve visualizar modal de pedágio de CEP

@regressivo @CT0214 @passed @passed_shopping
Cenario: Pedágio - Inserir Cep válido
Quando acessa a sub home logado
Dado que o usuário abra o pedágio de CEP com cep ja cadastrado
Quando inserir um cep válido
E clica em Buscar
Então deve visualizar Receber em: "01310-930"

@regressivo @CT0215 @passed @passed_shopping
Cenario: Pedágio - Inserir Cep inválido
Quando acessa a sub home logado
Dado que o usuário abra o pedágio de CEP com cep ja cadastrado
Quando inserir um cep inválido 00000000
E clica em "Buscar"
Então o campo de inserir cep retorna vazio
