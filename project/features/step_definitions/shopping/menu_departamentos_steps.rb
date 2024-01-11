Dado('que acesso a Subhome do Shopping') do
  @screen.call(MenuDepartamentosScreen).acessar_subhome_shopping
end

Quando('aciona o menu de departamentos') do
  @screen.call(MenuDepartamentosScreen).acessar_menu_shopping
end

Quando('clica em cancelar no modal de outras oportunidades') do
  @screen.call(MenuDepartamentosScreen).cancel_btn_opportunities_modal
end

Então('app deve apresentar os submenus') do |table|
  @screen.call(MenuDepartamentosScreen).valido_secao_departamentos(table)
end

Dado('que estou no menu de departamentos') do
  @screen.call(MenuDepartamentosScreen).acessar_subhome_shopping
  @screen.call(MenuDepartamentosScreen).acessar_menu_shopping
end

Quando('acionar opção para voltar') do
  @screen.call(MenuDepartamentosScreen).btn_voltar_departamentos
end

Então('o app deve direcionado para a subhome') do
  @screen.call(MenuDepartamentosScreen).valida_subhome_shopping
end

Quando('acesso um departamento específico') do
  @screen.call(MenuDepartamentosScreen).acessar_departamento
end

Então('app deve abrir a lista de categorias do respectivo departamento') do
  @screen.call(MenuDepartamentosScreen).valida_lista_departamento
end

Então('apresentar o botão voltar') do
  @screen.call(MenuDepartamentosScreen).valida_btn_voltar
end

Então('apresentar como título o departamento acessado') do
  @screen.call(MenuDepartamentosScreen).valida_direcionamento_departamento_escolhido
end

Quando('acessar uma categoria') do
  @screen.call(MenuDepartamentosScreen).acessar_categoria_do_departamento
end

Então('o app deve direcionar para a PLP da Categoria escolhida') do
  @screen.call(MenuDepartamentosScreen).valida_direcionamento_categoria_escolhida
end

Dado('aciono uma opção em Outras Oportunidades') do
  @screen.call(MenuDepartamentosScreen).acessar_encontrar_lojas
end

Então('app deve permanecer no menu de departamentos') do
  @screen.call(MenuDepartamentosScreen).valida_mantem_departamentos
end

Quando("eu aciono Ver histórico na sessão Últimos produtos vistos") do
    @screen.call(MenuDepartamentosScreen).acessar_menu_shopping
    @screen.call(MenuDepartamentosScreen).acessar_historico_produtos
end

Quando('clica em continuar no modal de outras oportunidades') do
  @screen.call(MenuDepartamentosScreen).confirm_btn_opportunities_modal
end

Então("app deve apresentar histórico limitado aos 10 mais recentes") do
    @screen.call(MenuDepartamentosScreen).valida_historico_de_pedidos
end

Então("app deve redirecionar o usuário para tela pertinente") do
    @screen.call(AcessarHomeDeslogadoScreen).valida_tela_seleciona_uma_loja
end