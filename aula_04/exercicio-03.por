programa {
  funcao inicio() {
    inteiro qntNumeros
    inteiro numeroDigitado
    inteiro maiorNumero = 0
    inteiro menorNumero = 0

    escreva("Quantos números deseja digitar? ")
    leia(qntNumeros)

    para (inteiro i = 0; i < qntNumeros; i++) {
      escreva("Qual o valor para o ", i+1, "º número? ")
      leia(numeroDigitado)

      se (i == 0) {
        maiorNumero = numeroDigitado
        menorNumero = numeroDigitado
      }
      senao {
        se (numeroDigitado > maiorNumero) {
          maiorNumero = numeroDigitado
        }
        se (numeroDigitado < menorNumero) {
          menorNumero = numeroDigitado
        }
      }
    }

    escreva("Menor número digitado: ", menorNumero, "\n")
    escreva("Maior número digitado: ", maiorNumero, "\n")
  }
}
