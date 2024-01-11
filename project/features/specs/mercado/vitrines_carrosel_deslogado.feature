
            # language: pt
            @acessarvitrinescarroselsubhomedeslogado
            @regressivo_all
            Funcionalidade: Acessar Vitrines Carrosel na sub home estando deslogado
            Eu como usuário do aplicativo do Carrefour
            Quero poder interagir vitrines carrosel  na sub home
            Para poder acessar produtos

            @regressivo @CT0251 @pc63 @passed
            Esquema do Cenário: Validar Vitrines na sub home
            Dado que estou na Home do App
            Quando clicar em Mercado
            Então devo vizualizar as abas Carrosel:
            | abas                            |
            | Ofertas da Semana               |


            # @regressivo @CT0252 @pc64 @passed
            # Esquema do Cenário: Validar Vitrine - Açougue e peixaria
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # E clicar nas primeiras vitrines "Açougue e peixaria"
            # Então devo vizualizar as abas:
            # | abas           |
            # | Carnes Bovinas |
            # | Aves           |
            # | Peixes         |
            # | Linguiça       |
            # | Carne Suína    |
            # | Salsicha       |
            # | Frutos do Mar  |

            @regressivo @CT0253 @pc65 @passed
            Esquema do Cenário: Validar Vitrine- Bebidas
            Dado que estou na Home do App
            Quando clicar em Mercado
            E clicar em "Bebidas"
            Então devo vizualizar as abas:
            | abas                     |
            | Vinhos                   |
            | Destilados               |
            | Sucos e Refrescos        |

            # @regressivo @CT0254 @pc66 @failed
            # Esquema do Cenário: Validar Vitrine - Bebê e Infantil
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clicar nas primeiras vitrines "Bebê e Infantil"
            # Então devo vizualizar as abas Bebe Infantil:
            # | abas                 |
            # | Mundo Bebê           |
            # | Alimentação Infantil |

            # @regressivo @CT0255 @pc67 @failed
            # Esquema do Cenário: Validar Vitrine- Beleza e saúde
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Cama, Mesa e Banho"
            # Exemplos:
            # | Abas_Beleza_Saude  | qnt2 |
            # | Cama, Mesa e Banho | 3    |

            @regressivo @CT0256 @pc68 @passed
            Esquema do Cenário: Validar Vitrine - Congelados
            Dado que estou na Home do App
            Quando clicar em Mercado
            Quando clicar em "Carnes e Congelados"
            Então devo vizualizar as abas:
              | abas           |
              | Carnes Bovinas |
              | Aves           |
              | Peixes         |
              | Linguiça       |
              | Carne Suína    |
              | Salsicha       |
              | Frutos do Mar  |

            @regressivo @CT0257 @pc69 @passed
            Esquema do Cenário: Validar Vitrine - Frios e Laticínios
            Dado que estou na Home do App
            Quando clicar em Mercado
            Quando clicar em "Frios e Laticínios"
            Então devo vizualizar as abas:
            | abas              |
            | Frios e Embutidos |
            | Queijos           |
            | Queijos Especiais |

            # @regressivo @CT0259 @pc71 @failed
            # Esquema do Cenário: Validar Vitrine - Higiene e Perfumaria
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Higiene e Perfumaria"
            # Então devo vizualizar as abas Higiene Perfumaria:
            # | abas                    |
            # | Corpo                   |
            # | cabelo                  |
            # | Higiene Bucal           |
            # | Cuidados Pessoais       |
            # | Maquiagem               |
            # | Unhas                   |
            # | Barba                   |
            # | Rosto                   |
            # | Cuidados Geriátricos    |


            @regressivo @CT0260 @pc72 @passed
            Esquema do Cenário: Validar Vitrine - Hortifruti
            Dado que estou na Home do App
            Quando clicar em Mercado
            Quando clicar em "Hortifruti"
            Então devo vizualizar as abas:
            | abas                  |
            | Legumes e Vegetais    |
            | Verduras e Hortaliças |
            | Frutas Frescas        |
            | Empório               |

            @regressivo @CT0262  @pc73 @passed
            Esquema do Cenário: Validar Vitrine - Limpeza e Lavanderia
            Dado que estou na sub home
            Quando clicar em "Limpeza e Lavanderia"
            Então devo vizualizar as abas:
            | abas                        |
            | Limpeza de Roupas           |
            | Limpeza de Banheiro         |
            | Limpeza de Cozinha          |

            # @regressivo @CT0261  @pc74 @failed
            # Esquema do Cenário: Validar Vitrine - Limpeza e Lavanderia
            # Dado que estou na sub home
            # Quando clica em "Limpeza"
            # Então devo vizualizar as abas Limpeza:
            # | abas                |
            # | Limpeza Geral       |
            # | Limpeza de Banheiro |
            # | Limpeza de Roupas   |
            # | Limpeza de Cozinha  |


            # @regressivo @CT0263 @pc75 @failed
            # Esquema do Cenário: Validar Vitrine- Padaria e matinais
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Padaria e Matinais"
            # Então devo vizualizar as abas Padaria Matinais:
            # | abas                  |
            # | Pães e Torrradas      |
            # | Bolos                 |
            # | Cereal Matinal        |
            # | Mel, Geléias e Patês  |
            # | Leites                |

            # @regressivo @CT0264 @pc76 @failed
            # Esquema do Cenário: Validar Vitrine - Pet Care
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Pet Care"
            # Então devo vizualizar as abas Pet Care:
            # | abas                 |
            # | Alimentos Pet        |
            # | Adestramento Pet     |
            # | Higiene e Beleza Pet |
            # | Acessórios Pet       |

            # @regressivo @CT0265 @pc77 @failed
            # Esquema do Cenário: Validar Vitrine - Pratos Prontos e Massas Frescas
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Pratos Prontos e Massas Frescas"
            # Então devo vizualizar as abas Pratos Prontos e Massas Frescas:
            # | abas               |
            # | Pratos Prontos     |


            # @regressivo @CT0266 @pc78 @failed
            # Esquema do Cenário: Validar Vitrine - Utilidades Domésticas
            # Dado que estou na Home do App
            # Quando clicar em Mercado
            # Quando clico em "Utilidades Domésticas"
            # Então devo vizualizar as abas Utilidades_Domesticas:
            # | abas                       |
            # | Cozinha                    |
            # | Banheiro e Lavanderia      |
            # | Diversos                   |
            # | Churrasco                  |
            # | Organizadores              |
