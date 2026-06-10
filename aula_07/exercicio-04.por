programa {
  funcao inicio() {
    inteiro qntAnos
    inteiro anoInformado

    escreva("Quantos anos deseja analisar? ")
    leia(qntAnos)

    para (inteiro i = 0; i < qntAnos; i++) {
      escreva("Digite o ", i+1, "° ano: ")
      leia(anoInformado)

      logico ehBissexto = analisarAno(anoInformado)

      se (ehBissexto) {
        escreva(anoInformado, " é um ano bissexto\n")
      }
      senao {
      escreva(anoInformado, " não é um ano bissexto\n")
      }
    }
  }

  funcao logico analisarAno(inteiro anoInformado) {
    se (anoInformado % 4 == 0 e anoInformado % 100 != 0 ou anoInformado % 400 == 0) {
      retorne verdadeiro
    }
    senao {
      retorne falso
    }
  }
}
