programa {
  funcao inicio() {
    inteiro qntClientes
    inteiro tipoMidia
    real valorTotal = 0.0

    inteiro qtdRadio = 0
    inteiro qtdTv = 0
    inteiro qtdRevista = 0
    inteiro qtdOutdoor = 0

    escreva("Quantos clientes deseja cadastrar? ")
    leia(qntClientes)

    inteiro i = 0
    enquanto (i < qntClientes) {
      escreva("\n----- Cliente ", i+1, " -----\n")
      escreva("1. Radio\n")
      escreva("2. TV\n")
      escreva("3. Revista\n")
      escreva("4. Outdoor\n")
      escreva("Escolha o tipo de midia: ")
      leia(tipoMidia)
      
      escolha(tipoMidia) {
        caso 1: {
          cadeia tipoFaixa
          escreva("Escolha o tipo de faixa (AM/FM): ")
          leia(tipoFaixa)

          se (tipoFaixa == "FM") {
            valorTotal += 500
          }
          se (tipoFaixa == "AM") {
            valorTotal += 300
          }
          
          qtdRadio++
          i++
          pare
        }
        caso 2: {
          inteiro horarioExibicao
          escreva("Qual o horário de exibição? ")
          leia(horarioExibicao)

          se (horarioExibicao <= 20) {
            valorTotal += 1200
          }
          se (horarioExibicao > 20) {
            valorTotal += 2000
          }
          
          qtdTv++
          i++
          pare
        }
        caso 3: {
          valorTotal += 750
          qtdRevista++
          i++
          pare
        }
        caso 4: {
          valorTotal += 1500
          qtdOutdoor++
          i++
          pare
        }
        caso contrario: {
          escreva("Opção de mídia inválida! Tente novamente.\n")
        }
      }
    }

    escreva("\n------------ RELATÓRIO FINAL -----------\n")
    escreva("O valor total que a agência irá receber: R$ ", valorTotal, "\n")
    escreva("Quantidade de anúncios para Rádio: ", qtdRadio, "\n")
    escreva("Quantidade de anúncios para TV: ", qtdTv, "\n")
    escreva("Quantidade de anúncios para Revista: ", qtdRevista, "\n")
    escreva("Quantidade de anúncios para Outdoor: ", qtdOutdoor, "\n")
  }
}
