Quando("clicar em Mercado") do
  @screen.call(CommunsScreen).acessa_mercado
end

E("navega pela sub home {int}") do |qnt|
  until qnt == 0
    @screen.call(VitrinesCarroselDeslogadoScreen).navegar_sub_home
    qnt = qnt - 1
  end
end

Então("devo vizualizar as Abas Mercearia:") do |iten|
  @screen.call(CorredoresDeslogadoScreen).validar_vitrine(iten)
end

Quando("clico em {string}") do |mensagem|
  @screen.call(VitrinesCarroselDeslogadoScreen).acessar_vitrine(mensagem)
end

Então('devo vizualizar as abas Carrosel:') do |carrosel|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_abas_carrosel(carrosel)
end

Então('devo vizualizar as abas Açougue_e_Peixaria:') do |acougue_e_peixaria|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_acougue_e_peixaria(acougue_e_peixaria)
  
end

Então('devo vizualizar as abas Bebidas:') do |bebida|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_vitrines_bebidas(bebida)
end

Então('devo vizualizar as abas Bebe Infantil:') do |infantil|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_bebe_infantil(infantil)
 
end


Então('devo vizualizar as abas Congelados:') do |congelados|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_congelados(congelados)
 
end
Então('devo vizualizar as abas Frios Lacticinios:') do |frios|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_frios(frios)
 
end

Então('devo vizualizar as abas Higiene Perfumaria:') do |perfumaria|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_perfumaria(perfumaria)
 
end


Então('devo vizualizar as abas Padaria Matinais:') do |padaria|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_padaria_matinais(padaria)
 
end

Então('devo vizualizar as abas Pet Care:') do |pet|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_pet_care(pet)
 
end

Então('devo vizualizar as abas Utilidades_Domesticas:') do |utilidade|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_utilidades_domesticas(utilidade)
  
end
Então('devo vizualizar as abas Pratos Prontos e Massas Frescas:') do |pratos|
  @screen.call(VitrinesCarroselDeslogadoScreen).validar_pratos_prontos(pratos)
end