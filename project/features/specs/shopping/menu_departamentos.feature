#language: pt

@menudepartamentos
@regressivo_all
@regressivo_shopping
Funcionalidade: Menu departamentos

@regressivoShopping @regressivo @CT0159 @passed @passed_shopping
Esquema do Cenário: Validar app dos departamentos
Dado que acesso a Subhome do Shopping
Quando aciona o menu de departamentos
Então app deve apresentar os submenus
|menusDp                |
|Celulares e Smartphones|
|Eletrodomésticos       |
|Tvs e Vídeo            |
|Informática            |
|Automotivo             |
|Eletroportáteis        |
|Esporte e Lazer        |
|Cama, Mesa e Banho     |
|Ar Condicionado e Ventilação|
|Todos os departamentos|

@regressivoShopping @regressivo @CT0160 @passed @passed_shopping
Cenário: Validar Sair do menu departamentos
Dado que estou no menu de departamentos
Quando acionar opção para voltar
Então o app deve direcionado para a subhome

@regressivoShopping @regressivo @CT0161 @passed @passed_shopping
Cenário: Validar acesso a um departamento
Dado que estou no menu de departamentos
Quando acesso um departamento específico
Então app deve abrir a lista de categorias do respectivo departamento
E apresentar o botão voltar
E apresentar como título o departamento acessado

@regressivoShopping @regressivo @CT0162 @passed @passed_shopping
Cenário: Validar acesso a categoria do departamento
Dado que estou no menu de departamentos
E acesso um departamento específico
Quando acessar uma categoria
Então o app deve direcionar para a PLP da Categoria escolhida

#Funcionalidade retirada deste cenário
@CT0163 @failed @Funcionalidade_retirada
Cenário: Validar "Ver histórico" últimos produtos vistos
Dado que estou na Subhome do Shopping logado "batata@uorak.com" "123@Mudar"
Quando eu aciono Ver histórico na sessão Últimos produtos vistos
Então app deve apresentar histórico limitado aos 10 mais recentes

@regressivoShopping @regressivo @CT0164  @passed @passed_shopping
Cenário: Validar "Outras Oportunidades" - Cancelar
Dado que estou no menu de departamentos
E aciono uma opção em Outras Oportunidades
Quando clica em cancelar no modal de outras oportunidades
Então app deve permanecer no menu de departamentos

@regressivoShopping @regressivo @CT0165 @passed @passed_shopping
Cenário: Validar "Outras Oportunidades" - Confirmar
Dado que estou no menu de departamentos
E aciono uma opção em Outras Oportunidades
Quando clica em continuar no modal de outras oportunidades
Então app deve redirecionar o usuário para tela pertinente
