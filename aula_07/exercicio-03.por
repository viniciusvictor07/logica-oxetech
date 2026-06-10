programa {
  funcao inicio() {
    real mediaFinal
    inteiro qntFaltas

    escreva("Digite a média final: ")
    leia(mediaFinal)
    
    escreva("Digite a quantidade de faltas: ")
    leia(qntFaltas)
    
    cadeia situacao = classificarAluno(mediaFinal, qntFaltas)
    escreva("\nSituação do aluno: ", situacao)
  }

  funcao cadeia classificarAluno(real media, inteiro faltas) {
    se (media < 0 ou media > 10) {
      escreva("Valor de média incorreto! Definindo média para 6.0 ")
      media = 6 
    }
    
    se (media >= 9.5 e faltas <= 10) {
      retorne "APROVADO COM LOUVOR"
    }
    senao se (media >= 7.0 e faltas <= 10) {
      retorne "APROVADO"
    }
    senao {
      retorne "REPROVADO"
    }
  }
}
