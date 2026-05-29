programa {
  funcao inicio() {
    inteiro numeroDigitado
    inteiro numerosNegativos = 0
    inteiro numerosPositivos = 0

    escreva("Digite números positivos ou negativos. O programa encerrá se o número for 0.\n")
    faca {
      escreva("Digite um número: ")
      leia(numeroDigitado)

      se (numeroDigitado > 0) {
        numerosPositivos += 1
      } 
      senao se (numeroDigitado < 0) {
        numerosNegativos += 1
      }
    } enquanto (numeroDigitado != 0)

    escreva("Quantidade de números positivos: ", numerosPositivos, "\n")
    escreva("Quantidade de números negativos: ", numerosNegativos)

  }
}
