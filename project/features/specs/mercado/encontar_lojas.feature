#language: pt

@encontrarlojas
@regressivo_all
Funcionalidade: Encontrar lojas
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com outras oportunidades
Para encontrar lojas

@regressivo @CT0122 @passed
Cenario: Encontrar lojas
Dado que o usuario esteja nos corredores
Quando clica em "Encontrar Lojas"
Então deve aparecer a tela Você será redirecionado para a Página Principal do app

@regressivo @CT0123 @passed
Cenario: Habilitar "Não avisar novamente"
Dado que o usuario esteja nos corredores
Quando clica em "Encontrar Lojas"
E habilitar Não avisar novamente
Então a mensagem "Você será redirecionado para a Página Principal do app" não deve mais aparecer

@regressivo @CT0124 @passed
Cenario: Continuar com procura de loja
Dado que o usuario deseja encontrar lojas
Quando clica em continuar
Então deve ser direcionado para a tela de lista de lojas

@regressivo @CT0125 @passed
Cenario: Escolhendo uma loja por lista
Dado que o usuario esteja na tela de lista de lojas
Quando escolher uma das lojas listada
Então deve ser direcionado para tela Detalhe da loja

@regressivo @CT0126 @passed
Cenario: Cancelar procura de loja
Dado que o usuario deseja encontrar lojas
Quando clica em cancelar
Então deve voltar para tela de Corredores

@regressivo @CT0127 @passed
Cenario: Acessar Central de atendimento
Dado que o usuario esteja nos corredores
Quando clica em "Central de Atendimento"
Então deve aparecer a tela Você será redirecionado para a Página Principal do app

@regressivo @CT0128 @passed
Cenario: Habilitar "Não avisar novamente" - mensagem Você será redirecionado para a Página Principal do app
Dado que o usuario esteja nos corredores
Quando clica em "Central de Atendimento"
E habilitar Não avisar novamente
E acessar novamente "Central de Atendimento"
Então a mensagem "Você será redirecionado para a Página Principal do app" não deve aparecer

@regressivo @CT0129 @passed
Cenario: Continuar com Central de atendimento
Dado que o usuario deseja acessar "Central de Atendimento"
Quando clica em continuar
Então deve ser direcionado para a tela FAQ App Meu Carrefour

@regressivo @CT0130 @passed
Cenario: Não seguir com Central de atendimento
Dado que o usuario deseja acessar "Central de Atendimento"
Quando clica em cancelar
Então deve voltar para tela de Corredores

@regressivo @CT0131 @passed
Cenario: Acessar cupons exclusivos
Dado que o usuario esteja nos corredores
Quando clica em "Cupons Exclusivos"
Então deve aparecer a tela Você será redirecionado para a Página Principal do app

@regressivo @CT0132 @passed
Cenario: Habilitar "Não avisar novamente"
Dado que o usuario esteja nos corredores
Quando clica em "Cupons Exclusivos"
E habilitar Não avisar novamente
E acessar novamente "Cupons Exclusivos"
Então a mensagem "Você será redirecionado para a Página Principal do app" não deve aparecer

@regressivo @CT0133 @passed
Cenario: Continuar com cupons exclusivos
Dado que o usuario deseja acessar "Cupons Exclusivos"
Quando clica em continuar
Então deve ser direcionado para a tela cupons exclusivos

@regressivo @CT0134 @passed
Cenario: Não seguir com cupons exclusivos
Dado que o usuario deseja acessar "Cupons Exclusivos"
Quando clica em cancelar
Então deve voltar para tela de Corredores

@regressivo @CT0135 @passed
Cenario: Acessar Ofertas meu carrefour
Dado que o usuario esteja nos corredores
Quando clica em "Ofertas Meu Carrefour"
Então deve aparecer a tela Você será redirecionado para a Página Principal do app

@regressivo @CT0136 @passed @bug_analisar
Cenario: Habilitar "Não avisar novamente"
Dado que o usuario esteja nos corredores
Quando clica em "Ofertas Meu Carrefour"
E habilitar Não avisar novamente
Então a mensagem "Você será redirecionado para a Página Principal do app" não deve mais aparecer

@regressivo @CT0137 @passed
Cenario: Continuar com ofertas meu carrefour
Dado que o usuario deseja acessar "Ofertas Meu Carrefour"
Quando clica em continuar
E escolher uma das lojas listada
Então deve ser direcionado para tela Detalhe da loja

@regressivo @CT0138 @passed
Cenario: Não seguir com Ofertas meu carrefour
Dado que o usuario deseja acessar "Ofertas Meu Carrefour"
Quando clica em cancelar
Então deve voltar para tela de Corredores
