programa {
  inclua biblioteca Util --> util 
  funcao inicio() {
    // jogo da adivinhação
    // sortear um numero entre 1 a 100
    // permitir que o jogador de palpites até acertar
    // para cada palpite exibir uma dica
    // exibir o numero de palpites no final

    inteiro numeroSorteado = util.sorteia(1,100)
    inteiro numeroEscolhido
    inteiro numeroTentativas = 0
    caracter opcaoEscolhida
    cadeia nomeJogador
    cadeia melhorJogador = ""
    inteiro melhorPontuacao = 101 
    
    enquanto (verdadeiro) {
      escreva("----------------------------------\n")
      escreva("Bem vindo ao jogo da adivinhação!\n")
      escreva("----------------------------------\n")

      escreva(numeroSorteado, "\n")
      
      escreva("Digite o nome do usuário à dar palpite: \n")
      leia(nomeJogador)

      enquanto (verdadeiro) {
        escreva(nomeJogador, ", escolha um número de 1 à 100: \n")
        leia(numeroEscolhido)
        
        numeroTentativas++
        
        se (numeroEscolhido == numeroSorteado) {
          se (numeroTentativas > 6) {
          escreva("Persistência é tudo! Número de tentativas: ", numeroTentativas)
          }

          senao se (numeroTentativas >= 4) {
            escreva("Muito bem! você foi rápido! Número de tentativas: ", numeroTentativas)
          }

          senao {
            escreva("Você é um gênio da adivinhação! Número de tentativas: ", numeroTentativas)
          }

          se (numeroTentativas < melhorPontuacao) {
            escreva("\nParabéns! Você obteve a melhor pontuação até agora.")
            melhorPontuacao = numeroTentativas
            melhorJogador = nomeJogador
          }

          numeroTentativas = 0
          pare
        } 
        
        se (numeroEscolhido > numeroSorteado) {
        escreva("O número escolhido é maior que o número sorteado. Tente novamente!\n")
        } 
        senao {
          escreva("O número escolhido é menor que o número sorteado. Tente novamente!\n")
        }
      }
      
      escreva("\nDeseja continuar? [sim/nao]: ")
      leia(opcaoEscolhida)

      se (opcaoEscolhida == 'N' ou 'n' ou "NAO" ou "nao") {
        escreva(melhorJogador, " foi o melhor jogador, com ", melhorPontuacao, " tentativas. \n")
        pare
      }
    }
  }
}
