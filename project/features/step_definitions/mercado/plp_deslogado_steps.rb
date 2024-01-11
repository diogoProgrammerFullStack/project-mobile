Quando('clicar nos stories de Bebidas') do
    @screen.call(PlpDeslogadoScreen).estories_bebida
end

Quando('clicar no corredor de Bebidas') do
    @screen.call(PlpDeslogadoScreen).corredor_bebidas
end

Então('devo entrar na PLP de Bebidas') do
    @screen.call(CommunsScreen).valida_plp
end