Quando('clica no ícone corredores') do
    @screen.call(MenuLateralDeslogadoScreen).icone_corredores
  end
  
  Então('será direcionado para Corredores') do
    @screen.call(MenuLateralDeslogadoScreen).corredores_encontrado?
  end 