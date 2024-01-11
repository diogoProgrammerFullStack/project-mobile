#language: pt
@acessarperfillogado
@regressivo_all
Funcionalidade: Acessar Perfil logado
Eu como usuário do aplicativo do Carrefour
Quero poder interagir com o meu perfil
Para visualizar mais opções

Contexto:
Dado que o usuario esteja logado no app "batata@uorak.com" "123@Mudar"

@regressivo @CT0181 @passed
Cenario: Alterar Avatar
Quando acessa o menu Meu perfil
E toca no Avatar
E seleciona um Avatar
E clica em "Salvar"
Então será direcionado para tela de Meu Perfil

@regressivo @CT0182 @passed
Cenario: Acesso ao editar perfil
Quando acessa o menu Meu perfil
E clica em "Editar perfil"
Então será direcionado para Editar perfil

@regressivo @CT0183 @passed
Cenario: Alterar nome
Dado que o usuario seleciona Nome completo
Quando digitar o novo nome "Teste Test"
E toca em Salvar
Então exibe modal Alterações salvas com sucesso

@regressivo @CT0184 @passed
Cenario: Alterar data de nascimento valida
Dado que o usuario seleciona data de nascimento
Quando seleciona todos os campos da data de nascimento válida
E toca em Salvar
Então exibe modal Data de nascimento alterada

@regressivo @CT0185 @passed
Cenario: Alterar data de nascimento invalida
Dado que o usuario seleciona data de nascimento
Quando seleciona todos os campos da data de nascimento inválida
Então exibe mensagem Selecione uma data válida

@regressivo @CT0186 @passed
Cenario: Alterar telefone válido
Dado que o usuario seleciona telefone
Quando digita telefone válido
Então exibe modal de alterações salvas com sucesso

@regressivo @CT0187 @passed
Cenario: Alterar telefone inválido
Dado que o usuario seleciona telefone
Quando digita telefone inválido ou nulo
Então exibe mensagem telefone inválido

@regressivo @CT0188 @passed
Cenario: Alterar senha do aplicativo
Dado que o usuario seleciona "Senha do aplicativo"
Quando digita Senha atual
E digita nova senha
E confirma senha
E toca em Salvar
Então exibe modal Senha alterada com sucesso

@regressivo @CT0190 @passed
Cenario: Ofertas e Promoçoes
Dado que o usuário esteja em Ofertas e Promoçoes
Quando flega a opção Selecionar todas as opções
Então as opções de E-mail, WhatsApp, SMS e e também concordo são selecionadas

@regressivo @CT0191 @passed
Cenario: Como usamos seus dados? pelo menu Editar perfil
Dado que o usuário esteja em editar perfil
Quando toca em Como usamos seus dados
Então será direcionado para tela Seus dados protegidos

@regressivo @CT0192 @passed
Cenario: Acesso a Meus cupons
Quando acessa o menu Meu perfil
E toca em "Meus cupons"
Então será direcionado para tela Meus Cupons Ativos

@regressivo @CT0194 @passed
Cenario: Acesso ao cartão Carrefour não tem o app instalado
Quando acessa o menu Meu perfil
E toca em "Cartão Carrefour"
E toca em "Continuar"
Então será direcionado para play store para baixar o app do Cartão de crédito Carrefour

@regressivo @CT0195 @passed
Cenario: Acesso aos Pedidos e Compras
Quando acessa o menu Meu perfil
E toca em "Pedidos e compras"
Então será direcionado para tela Meus pedidos e compras

@regressivo @CT0196 @passed
Cenario: Acesso aos Meus Endereços
Quando acessa o menu Meu perfil
E toca em "Meus endereços"
Então será direcionado para tela Meus Endereços

@regressivo @CT0197 @passed
Cenario: Adicionar endereço
Dado que o usuario esteja em Meus endereços
Quando acessa Novo endereço
E preenche campos obrigatorios de endereço validos "Teste" "Casa" "61999999999" "01310930" "10" "Teste Complemento" "Teste Referencia"
E toca em "Continuar"
Então será direcionado para tela Meus endereços com endereço salvo

@regressivo @CT0198 @passed
Cenario: Editar endereço
Dado que o usuario esteja em Meus endereços
Quando clica nos três pontos
E toca em editar
Então será direcionado a tela inserir seus dados

# @regressivo @CT0199 @failed
# Cenario: Excluir endereço
# Dado que o usuario esteja em Meus endereços
# Quando clica nos três pontos
# E toca em excluir
# Então o endereço será excluido.

@regressivo @CT0200 @passed
Cenario: Acesso a Sua opnião sobre o App
Quando acessa o menu Meu perfil
E tocar em "Sua opinião sobre o App"
Então será direcionado para tela de opinião do App

@regressivo @CT0201 @passed
Cenario: Acesso a Central de Ajuda
Dado que o usuario esteja em Meu Perfil
Quando usuário acessa a Central de ajuda
Então será direcionado para tela de Central de Ajuda

@regressivo @CT0202 @passed
Cenario: Acesso aos Termos de Uso
Dado que o usuario esteja em Meu Perfil
Quando usuário acessa o Termos e Condições
Então será direcionado para tela de Termos e Condições

@regressivo @CT0203 @passed
Cenario: Acesso a Política de Privacidade
Quando acessa o menu Meu perfil
E clica em "Política de Privacidade"
Então será direcionado para tela de Política de Privacidade

@regressivo @CT0204 @passed
Cenario: Acesso ao Sobre o App
Quando acessa o menu Meu perfil
E clica em "Sobre o App"
Então será direcionado para tela Sobre o App

@regressivo @CT0205 @passed
Cenario: Sair do App
Quando acessa o menu Meu perfil
E clica em "Sair"
Então será direcionado para tela do app deslogado
