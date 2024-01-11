  Quando('clica em Fazer login') do 
    @screen.call(FazerLoginDeslogadoScreen).btn_fazer_login_ultimos_pedidos
  end
  
  Então('deve vizualizar a tela Cadastre-se ou acesse sua conta') do
    @screen.call(FazerLoginDeslogadoScreen).modal_fazer_login
  end

