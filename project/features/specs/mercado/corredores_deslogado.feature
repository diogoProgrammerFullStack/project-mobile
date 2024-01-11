# language: pt
@corredores1
@regressivo_all
Funcionalidade: Acessar corredores estando deslogado
            Eu como usuário do aplicativo do Carrefour
            Quero poder interagir com corredores
            Para poder visualizar produtos

  @regressivo @CT0085 @passed
  Cenario: Acessar Vitrines
    Dado que o usuario esteja nos corredores
    Então deve vizualizar as vitrines

  @regressivo @CT0086 @passed
  Esquema do Cenário: Validar Vitrine - Açougue e peixaria
  Dado que o usuario esteja nos corredores
  Quando usuario acessa o corredor "Açougue e Peixaria"
  Então devo vizualizar as abas:
   | abas           |
   | Carne Suína    |
   | Linguiça       |
   | Peixes         |
   | Frutos do Mar  |
   | Salsicha       |

  @regressivo @CT0087 @passed
  Esquema do Cenário: Validar Vitrine- Bebidas
  Dado que o usuario esteja nos corredores
  Quando usuario acessa o corredor "Bebidas"
  Então devo vizualizar as abas:
    | abas                     |
    | Sucos e Refrescos        |
    | Destilados               |
    | Cervejas                 |
    | Refrigerantes            |
    | Cafés e Chás             |
    | Águas                    |
    | Energéticos e Isotônicos |
    | Espumantes               |
    | Bebida Vegetal           |

  @regressivo @CT0088 @passed
  Esquema do Cenário: Validar Vitrine - Bebê e Infantil
    Dado que o usuario esteja nos corredores
    Quando usuario acessa o corredor "Bebê e Infantil"
    Então devo vizualizar as abas:
      | abas                 |
      | Mundo Bebê           |
      | Alimentação Infantil |

@regressivo @CT0089 @failed
Esquema do Cenário: Validar Vitrine - Congelados
 Dado que o usuario esteja nos corredores
 Quando usuario acessa o corredor "Congelados"
 Então devo vizualizar as abas:
  | abas                  |
  | Legumes e Vegetais    |
# | Polpas e Frutas       |
#  | Hamburguer            |

  @regressivo @CT0090 @passed
  Esquema do Cenário: Validar Vitrine - Drogaria
    Dado que o usuario esteja nos corredores
    Quando usuario acessa o corredor "Drogaria"
    Então devo vizualizar as abas:
      | abas            |
      | Dermocosméticos |

   @regressivo @CT0091 @passed
   Esquema do Cenário: Validar Vitrine- Frios e Laticínios
   Dado que o usuario esteja nos corredores
   Quando usuario acessa o corredor "Frios e Laticínios"
   Então devo vizualizar as abas:
       | abas                 |
       | Manteiga e Margarina |
       | Frios e Embutidos    |
       | Queijos              |
       | Queijos Especiais    |

  @regressivo @CT0092 @passed
  Esquema do Cenário: Validar Vitrine - Higiene e Perfumaria
   Dado que o usuario esteja nos corredores
   Quando usuario acessa o corredor "Higiene e Perfumaria"
   Então devo vizualizar as abas:
    | abas                 |
    | Corpo                |
    | Cabelo               |
    | Higiene Bucal        |
    | Cuidados Pessoais    |
    | Maquiagem            |

@regressivo @CT0093  @passed
Esquema do Cenário: Validar Vitrine - Hortifruti
  Dado que o usuario esteja nos corredores
  Quando usuario acessa o corredor "Hortifruti"
  Então devo vizualizar as abas:
    | abas                  |
    | Legumes e Vegetais    |
    | Frutas Frescas        |
    | Verduras e Hortaliças |
    | Empório               |

@regressivo @CT0094 @passed
 Esquema do Cenário: Validar Vitrine - Limpeza e Lavanderia
  Dado que o usuario esteja nos corredores
  Quando usuario acessa o corredor "Limpeza e Lavanderia"
  Então devo vizualizar as abas:
    | abas                |
    | Limpeza de Banheiro |
    | Limpeza de Roupas   |
    | Limpeza de Cozinha  |

@regressivo @CT0095 @failed
 Esquema do Cenário: Validar Vitrine - Mercearia
  Dado que o usuario esteja nos corredores
  Quando usuario acessa o corredor "Mercearia"
  Então devo vizualizar as abas:
   | abas                        |
   | Biscoitos e Bolachas        |
   | Doces e Confeitaria         |
   | Temperos e Condimentos      |

  @regressivo @CT0096 @passed
  Esquema do Cenário: Validar Vitrine- Padaria e matinais
    Dado que o usuario esteja nos corredores
    Quando usuario acessa o corredor "Padaria e Matinais"
    Então devo vizualizar as abas:
      | abas                 |
      | Bolos                |
      | Cereal Matinal       |
      | Mel, Geléias e Patês |
      | Leites               |

@regressivo @CT0097 @passed
 Esquema do Cenário: Validar Vitrine - Pet care
  Dado que o usuario esteja nos corredores
  E navego pelo corredor
  Quando usuario acessa o corredor "Pet Care"
  Então devo vizualizar as abas:
    | abas                 |
    | Acessórios Pet       |
    | Adestramento Pet     |
    | Higiene e Beleza Pet |

  @regressivo @CT0098 @passed
  Esquema do Cenário: Validar Vitrine - Pratos prontos e Massas frescas
    Dado que o usuario esteja nos corredores
    E navego pelo corredor
    Quando usuario acessa o corredor "Pratos Prontos e Massas Frescas"
    Então devo vizualizar as abas:
      | abas           |
      | Pratos Prontos |

 @regressivo @CT0099 @passed
 Esquema do Cenário: Validar Vitrine - Utilidades domésticas
  Dado que o usuario esteja nos corredores
  E navego pelo corredor
  Quando usuario acessa o corredor "Utilidades Domésticas"
  Então devo vizualizar as abas:
    | abas                  |
    | Itens para Festa      |
    | Diversos              |
    | Churrasco             |
    | Organizadores         |
