programa {
  funcao inicio() {
    cadeia nome
    real nota1
    real nota2
    real media
    cadeia status

    escreva("Digite seu nome: ")
    leia(nome)
    se (nome == "") {
      nome = "Aluno"
    }

    escreva("Digite a primeira nota [0 a 10]: ")
    leia(nota1) 
    se (nota1 < 0.0 ou nota1 > 10.0) {
      escreva("Aviso: Nota inválida! Ajustando para 0.0.\n")
      nota1 = 0.0
    }

    escreva("Digite a segunda nota [0 a 10]: ")
    leia(nota2)
    se (nota2 < 0.0 ou nota2 > 10.0) {
      escreva("Aviso: Nota inválida! Ajustando para 0.0.\n")
      nota2 = 0.0
    }

    media = (nota1 + nota2) / 2 

    se (media >= 7.0) {
      status = "Aprovado(a)!"
    } senao {
      status = "Reprovado(a)."
    }

    escreva("\n==================================\n")
    escreva("  Resultado Final de ", nome, "\n")
    escreva("==================================\n")
    escreva(" - Nota 1: ", nota1, "\n")
    escreva(" - Nota 2: ", nota2, "\n")
    escreva(" - Média: ", media, "\n")
    escreva(" - Status: ", status, "\n")
    escreva("==================================\n")
  }
}
