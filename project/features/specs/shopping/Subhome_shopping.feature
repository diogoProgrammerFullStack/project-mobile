# language: pt

@pcsubhome_shopping
@regressivo_all
Funcionalidade: Subhome Shopping

            @CT0239 @pc240 @failed @funcionalidade_retirada
            Cenário: Validar seções apresentadas na Subhome deslogada
            Dado que estou na Subhome do Shopping
            Quando verifico apresentação da seção Últimos produtos vistos
            Então app deve apresentar opção de login para que seja apresentado histórico
            E ao rolar scroll até produtos patrocinados
            E app deve apresentar banner para login logo abaixo

@regressivoShopping @regressivo @CT0240 @pc241 @passed @passed_shopping
Esquema do Cenário: Validar seções de departamentos na Subhome
Dado que estou na Subhome do Shopping
Quando navegar até a seção de "<departamentos>"
Então o app deve apresentar a opção "Ver mais"
Exemplos:
| departamentos         |
| Melhores ofertas      |
| Produtos patrocinados |

@regressivoShopping @regressivo @CT241 @pc242 @passed @passed_shopping
Esquema do Cenário: Validar redirecionamento Stories
Dado que o usuário esteja deslogado
Quando que estou na Subhome do Shopping
Então app deve redirecionar para tela de Stories:
| abas                  |
| Smartphones           |
| Pneus & Auto          |
| Notebooks             |
| Eletros               |
| TVs                   |
| Fraldas               |

@regressivoShopping @regressivo @CT0242 @passed @passed_shopping
Cenário: Validar footer (rodapé) - "Regras das Promoções Carrefour"
Dado que estou na Subhome do Shopping
Quando desço a tela até o footer
E clico em Regras das Promoções Carrefour
Então app deve apresentar modal com as regras
E ao rolar scroll
E app deve apresentar botão subir

@regressivoShopping @regressivo @CT0243 @passed @passed_shopping
Cenário: Validar footer (rodapé) - "Ver todos os Departamentos"
Dado que estou na Subhome do Shopping
Quando desço a tela até o footer
E clico em Departamentos
Então app deve direcionar usuário para menu de departamentos
