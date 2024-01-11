Quando("acessa Comprar") do
  @screen.call(BarraNavegacaoDeslogadoScreen).acessa_comprar
end

Quando("acessa Leitor") do
  @screen.call(BarraNavegacaoDeslogadoScreen).acessa_leitor
end

Quando("acessa Perfil") do
  @screen.call(BarraNavegacaoDeslogadoScreen).acessa_perfil
end

Quando("acessa Tudo") do
  @screen.call(BarraNavegacaoDeslogadoScreen).acessa_tudo
end

Entao("será direcionado para Selecione uma loja") do
  @screen.call(BarraNavegacaoDeslogadoScreen).validar_tela_leitor
end

Entao("será direcionado para Meu perfil") do
  @screen.call(BarraNavegacaoDeslogadoScreen).valida_tela_meu_perfil
end

Entao("exibe modal Encontre tudo aqui") do
  @screen.call(BarraNavegacaoDeslogadoScreen).valida_tela_tudo
end
