            #language: pt
            @acessarstoriesubhomedeslogado
            @regressivo_all
            Funcionalidade: Acessar Stories na sub home estando deslogado
            Eu como usuário do aplicativo do Carrefour
            Quero poder interagir com Stories na sub home
            Para poder acessar produtos

            @regressivo @CT0230 @passed
            Esquema do Cenário: Validar Stories - Mercado
            Dado que estou na Home do App
            Quando clicar em Mercado
            Então devo vizualizar as abas:
            | abas              |
            | Mercearia         |
            | Cervejas & Drinks |
            | Hortifruti        |
            | Padaria           |
            | Saudáveis         |
            | Limpeza           |
            | Marca própria     |
            | Drogaria          |

            @regressivo @CT0231 @pc260 @passed
            Esquema do Cenário: Validar Storie - Mercearia
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Mercearia"
            Então devo vizualizar as abas:
            | abas                             |
            | Guloseimas                       |
            | Massas e Molhos                  |

            @regressivo @CT0232 @passed
            Esquema do Cenário: Validar Storie - Cervejas & Drinks
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Cervejas & Drinks"
            Então devo vizualizar as abas:
            | abas                     |
            | Vinhos                   |
            | Destilados               |
            | Sucos e Refrescos        |
            | Cervejas                 |

            @regressivo @CT0233 @passed
            Esquema do Cenário: Validar Storie - Hortifruti
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Hortifruti"
            Então devo vizualizar as abas:
            | abas                  |
            | Legumes e Vegetais    |
            | Verduras e Hortaliças |
            | Frutas Frescas        |

            @regressivo @CT0234 @passed
            Esquema do Cenário: Validar Storie - Padaria
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Padaria"
            Então devo vizualizar as abas:
            | abas                 |
            | Bolos                |
            | Cereal Matinal       |
            | Mel, Geléias e Patês |

            @regressivo @CT0235 @passed
            Esquema do Cenário: Validar Storie - Saudáveis
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Saudáveis"
            Então devo vizualizar as abas:
            | abas |
            | Tudo |

            @regressivo @CT0236 @passed
            Esquema do Cenário: Validar Storie - Limpeza
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar em "Limpeza"
            Então devo vizualizar as abas:
            | abas                |
            | Limpeza Geral       |
            | Limpeza de Banheiro |
            | Limpeza de Roupas   |

            @regressivo @CT0237 @passed
            Esquema do Cenário: Validar Storie - Marca própria
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Marca própria"
            Então devo vizualizar as abas:
            | abas   |
            | Tudo   |

            @regressivo @CT0238 @passed
            Esquema do Cenário: Validar Storie - Drogaria
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar nas primeiras vitrines "Drogaria"
            Então devo vizualizar as abas:
            | abas                    |
            | Dermocosméticos         |
            | Primeiros Socorros      |
            | Aparelhos e Monitores   |
