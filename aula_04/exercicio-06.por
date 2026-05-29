programa {
  funcao inicio() {
    // EXERCÍCIO INCOMPLETO, AINDA ESTÁ SENDO FEITO
    
    inteiro qntClientes
    inteiro tipoMidia
    real valorTotal = 0

    escreva("Quantos clientes deseja cadastrar? ")
    leia(qntClientes)

    para (inteiro i = 0; i < qntClientes; i++) {
      escreva("----- Cliente ", i+1, " -----\n")
      escreva("1. Radio\n")
      escreva("2. TV\n")
      escreva("3. Revista\n")
      escreva("4. Outdoor\n")
      escreva("Escolha o tipo de midia:\n")
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
        }
        caso 2: {
          inteiro horarioExibicao
          escreva("Qual a horário de exibição? ")
          leia(horarioExibicao)

          se (horarioExibicao <= 20) {
            valorTotal += 1200
          }
          se (horarioExibicao > 20) {
            valorTotal += 2000
          }
        }
        caso 3:
          valorTotal += 750
        caso 4:
          valorTotal += 1500
        }
    }
  }
}

// ANOTAÇÕES DO EXERCÍCIO:

// Para Rádio, perguntar se o anúncio será em AM ou FM.
// Para TV, perguntar o horário de exibição.
// Para Revista e Outdoor, nenhuma informação adicional será necessária.
// Ao final, o programa deve exibir:

// O valor total que a agência irá receber.
// A quantidade de anúncios para Rádio.
// A quantidade de anúncios para TV.
// A quantidade de anúncios para Revista.
// A quantidade de anúncios para Outdoor.

// Mídia	      Condição	                   Valor
// Rádio	      FM	                           R$ 500,00
// Rádio	      AM	                           R$ 300,00
// TV	              Horário até 20h	   R$ 1.200,00
// TV	              Horário após 20h	   R$ 2.000,00
// Revista	                 -	                   R$ 750,00
// Outdoor            	 -	                    R$ 1.500,00

// Entrada :
// Quantos clientes deseja cadastrar? 3

// Cliente 1
// Tipo de midia (radio/tv/revista/outdoor): radio
// Faixa (AM/FM): FM

// Cliente 2
// Tipo de midia (radio/tv/revista/outdoor): tv
// Horario: 21

// Cliente 3
// Tipo de midia (radio/tv/revista/outdoor): revista
