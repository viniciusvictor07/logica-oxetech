programa {
  inclua biblioteca Util -->util

  cadeia melhorJogadorFacil = ""
  inteiro melhorPontuacaoFacil = 101

  cadeia melhorJogadorMedio = ""
  inteiro melhorPontuacaoMedio = 1001

  cadeia melhorJogadorDificil = ""
  inteiro melhorPontuacaoDificil = 10001

  funcao inicio() {

    enquanto (verdadeiro) {      
      inteiro numeroTentativas = 0
      cadeia nomeJogador

      exibirMenu()

      escreva("Qual o seu nome ? ")
      leia(nomeJogador)

      inteiro nivelDificuldade = escolherDificuldade()

      inteiro qntIntervalo = definirIntervalo(nivelDificuldade)

      inteiro numeroSorteado = sortearNumero(qntIntervalo)

      escreva("\nOlá, ", nomeJogador, "! Preparando o jogo")

      atraso()

      mensagemInicio(qntIntervalo)

      enquanto (verdadeiro) {
        inteiro numeroDigitado

        escreva("Qual o seu palpite ? ")
        leia(numeroDigitado)

        se (numeroDigitado < 1 ou numeroDigitado > qntIntervalo) {
          escreva("⚠️ Dê um palpite entre 1 e ", qntIntervalo, ". Tente novamente!\n\n")
        } senao {
          numeroTentativas++

          se (numeroDigitado == numeroSorteado) {
            mensagemPersonalizada(numeroTentativas)
            atualizarRecordeJogador(nivelDificuldade, nomeJogador, numeroTentativas)
            pare
          } 
          exibirDica(numeroSorteado, numeroDigitado) 
        }
      }
      cadeia novoJogo = iniciarNovoJogo()

      se (novoJogo == "nao" ou novoJogo == "NAO" ou novoJogo == "n" ou novoJogo == "N") {
        exibirPlacarFinal()
        pare
      }
    } 
  }

  funcao exibirMenu() {
    escreva("---------------------------------\n")
    escreva("Bem-vindo ao Jogo da Adivinhação!\n")
    escreva("---------------------------------\n\n")
  }

  funcao inteiro sortearNumero(inteiro intervalo) {
    retorne util.sorteia(1, intervalo)
  }

  funcao inteiro escolherDificuldade() {
    inteiro nivel

    escreva("ESCOLHA UMA DIFICULDADE: \n")
    escreva("1 - Fácil (1 a 100)\n")
    escreva("2 - Médio (1 a 1000)\n")
    escreva("1 - Difícil (1 a 10000)\n")

    leia(nivel)
    
    retorne nivel
  }

  funcao exibirPlacarFinal() {
    escreva("-----PLACAR FINAL-----")

    se (melhorJogadorFacil != "") {
      escreva("\n🏅 O melhor jogador do nível fácil foi ", melhorJogadorFacil, " com ", melhorPontuacaoFacil, " tentativas.\n")
    }
    senao se (melhorJogadorMedio != "") {
      escreva("\n🏅 O melhor jogador do nível médio foi ", melhorJogadorMedio, " com ", melhorPontuacaoMedio, " tentativas.\n")
    }
    senao se (melhorJogadorDificil != "") {
      escreva("\n🏅 O melhor jogador do nível difícil foi ", melhorJogadorDificil, " com ", melhorPontuacaoDificil, " tentativas.\n")
    }
  }

  funcao atraso() {
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".")
    util.aguarde(1000)
    escreva(".\n\n")
    util.aguarde(1000)
  }

  funcao mensagemInicio(inteiro intervalo) {
  escreva("Um número de 1 a ", intervalo, " foi sorteado!\n")
    escreva("Tente adivinhar qual é! Boa sorte!\n\n")
  }

  funcao mensagemPersonalizada(inteiro numeroTentativas) {
    se (numeroTentativas <= 3) {
      escreva("✅ Uau! Você é um gêneio da adivinhação! Número de Tentativas: ", numeroTentativas, ".\n")
    } senao se (numeroTentativas <= 6) {
      escreva("✅ Muite bem! Você foi rápido! Número de Tentativas: ", numeroTentativas, ".\n") 
    } senao {
      escreva("✅ Conseguiu! Persitência é tudo! Número de Tentativas: ", numeroTentativas, ".\n") 
    }
  }

  funcao atualizarRecordeJogador(inteiro nivel, cadeia nomeJogador, inteiro numeroTentativas) {
    se (nivel == 1) {
      se (numeroTentativas < melhorPontuacaoFacil) {
        melhorPontuacaoFacil = numeroTentativas
        melhorJogadorFacil = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
      }
    }
    senao se (nivel == 2) {
      se (numeroTentativas < melhorPontuacaoMedio) {
        melhorPontuacaoMedio = numeroTentativas
        melhorJogadorMedio = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n") 
      }
      
    }
    senao se (nivel == 3) {
      se (numeroTentativas < melhorPontuacaoDificil) {
        melhorPontuacaoDificil = numeroTentativas
        melhorJogadorDificil = nomeJogador
        escreva("\n🏆 Novo recorde! Você obteve a melhor pontuação até agora.\n")
      }
    }
  }

  funcao exibirDica(inteiro numeroSorteado, inteiro numeroDigitado) {
    se (numeroSorteado > numeroDigitado) {
      escreva("❌ O número sorteado é MAIOR que ", numeroDigitado, ".\n\n")
    } senao {
      escreva("❌ O número sorteado é MENOR que ", numeroDigitado, ".\n\n")
    }
  }

  funcao cadeia iniciarNovoJogo() {
    cadeia iniciarJogo

    escreva("\nDeseja iniciar um novo jogo (sim/nao) ? ")
    leia(iniciarJogo)
    limpa()
    retorne iniciarJogo
  }

  funcao inteiro definirIntervalo(inteiro nivelDificuldade) {
    inteiro intervalo 

    escolha(nivelDificuldade) {
      caso 1: 
        intervalo = 100
        pare
      caso 2: 
        intervalo = 1000
        pare
      caso 3:
        intervalo = 10000
        pare
      caso contrario: 
        intervalo = 100
        escreva("⚠️ Opção inválida. Definindo dificuldade para 'fácil'.")
    }
    retorne intervalo
  }
}
