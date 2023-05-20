            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4

            Esquema do Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar <primeiro_numero> com <segundo_numero>
            Então a mensageme exibida deve ser o <resultado>

            Exemplos:
            | primeiro_numero | segundo_numero | resultado |
            | "-30"           | "16"           | "-14"     |
            | "16"            | "45"           | "61"      |
            | "25"            | "-25"          | "0"       |
            | "0"             | "-3"           | "-3"      |
            | "-2"            | "-4"           | "-6"      |
            | "35"            | "-63"          | "28"      |
            | "7"             | "28"           | "35"      |
            | "11"            | "37"           | "48"      |
            | "100"           | "5"            | "105"     |
            | "-41"           | "-5"           | "-46"     |
            | "2"             | "6"            | "8"       |
            | "35"            | "-11"          | "24"      |
            | "17"            | "23"           | "40"      |
            | "23"            | "11"           | "44"      |
            | "-8"            | "-30"          | "38"      |
            | "-4"            | "6"            | "2"       |
            | "5"             | "-8"           | "-3"      |
            | "-3"            | "10"           | "7"       |
            | "22"            | "33"           | "55"      |

