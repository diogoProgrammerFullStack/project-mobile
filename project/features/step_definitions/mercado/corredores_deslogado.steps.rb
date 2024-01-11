Dado('que o usuario esteja nos corredores') do
    @screen.call(CommunsScreen).home_is_visible
    @screen.call(CommunsScreen).acessa_corredores
end

Então('devo vizualizar Vitrines de {string}') do |vitrine| 
    @screen.call(CorredoresDeslogadoScreen).validar_vitrine(vitrine)
end

Então('deve vizualizar as vitrines') do 
    @screen.call(CorredoresDeslogadoScreen).validar_vitrines
end

E('navego pelo corredor') do 
    @screen.call(CorredoresDeslogadoScreen).arrasta_corredor
end

E('navego pelas abas {int}') do |qnt|
    # @screen.call(CorredoresDeslogadoScreen).validar_tela_vitrine
    until qnt == 0 do
        @screen.call(CorredoresDeslogadoScreen).navegar_pelas_abas(488, 1431, 0, 1431)
        qnt = qnt - 1
      end
end
