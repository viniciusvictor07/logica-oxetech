programa {
  funcao inicio() {
    inteiro valorPH
    cadeia tipoSubstancia

    escreva("Digite valores de pH. O programa encerrará se o número for -1.\n\n")
    
    faca {
      escreva("Digite um valor de pH: ")
      leia(valorPH)

      se (valorPH == -1) {
        escreva("Encerrando programa...\n")
      }
      senao {
        se (valorPH < 7) {
          tipoSubstancia = "ácida"
        } 
        senao se (valorPH > 7) {
          tipoSubstancia = "básica"
        }
        senao {
          tipoSubstancia = "neutra"
        }

        escreva("O tipo da substância é: ", tipoSubstancia, "\n\n")
      }
    } enquanto (valorPH != -1)
  }
}
