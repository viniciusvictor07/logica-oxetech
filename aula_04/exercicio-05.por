programa {
  funcao inicio() {
    inteiro valorPH
    cadeia tipoSubstancia

    escreva("Digite valores de PH. O programa encerrá se o número for -1.\n")
    faca {
      escreva("Digite um valor de PH: ")
      leia(valorPH)

      se (valorPH < 7) {
        tipoSubstancia = "ácida"
      } 
      senao se (valorPH > 7) {
        tipoSubstancia = "basica"
      }
      senao {
        tipoSubstancia = "neutra"
      }

      se (valorPH != -1) {
        escreva("O tipo da substância é ", tipoSubstancia, "\n")
      }
      senao {
        escreva("Encerrando programa...")
      }
    } enquanto (valorPH != -1)
  }
}
