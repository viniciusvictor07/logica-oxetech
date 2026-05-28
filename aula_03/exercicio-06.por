programa {
  funcao inicio() {
    real temperatura
    caracter sintomas
    cadeia situacao

    escreva("Qual a sua temperatura? ")
    leia(temperatura)

    se (temperatura < 0.0 ou temperatura > 50.0) {
      escreva("Aviso: Temperatura inválida! Ajustando para 36.5°C.\n")
      temperatura = 36.5
    }

    escreva("Você está com secreção, tosse e dor no corpo? (S/N) ")
    leia(sintomas)

    se (sintomas != 'S' e sintomas != 'N') {
      escreva("Aviso: Opção inválida! Definindo resposta para N.\n")
      sintomas = 'N'
    }

    se (temperatura >= 37.0 e sintomas == 'S') {
      situacao = "Exames Especiais"
    }
    senao se (temperatura >= 37.0 e sintomas == 'N') {
      situacao = "Exames Basicos"
    }
    senao se (temperatura < 37.0 e sintomas == 'S') {
      situacao = "Exames Basicos"
    }
    senao {
      situacao = "Liberado"
    }

    escreva("\nResultado da triagem: ", situacao)
  }
}
