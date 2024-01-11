class MenuLateralDeslogadoScreen
    include RSpec::Matchers
    # require_relative './wait.rb'
   
    def icone_corredores
      wait_element(:xpath, '//android.widget.ImageView[@content-desc="Corredores"]').click
    end
    
    def corredores_encontrado?
      expect(wait_element(:xpath, '//*[@text="Corredores"]')).to be_truthy
    end
  end