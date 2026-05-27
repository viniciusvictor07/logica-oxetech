programa {
  funcao inicio() {
    cadeia nome
    inteiro idade
    real altura
    caracter genero
    logico estudante

    escreva("Digite seu nome: ")
    leia(nome)
    se (nome == "") {
      escreva("Aviso: Nome não informado! Definindo para Não informado.\n")
      nome = "Não informado"
    }

    escreva("Digite sua idade: ")
    leia(idade)
    se (idade < 0 ou idade > 120) {
      escreva("Aviso: Idade inválida! Definindo para 0.\n")
      idade = 0
    }

    escreva("Digite sua altura (m): ")
    leia(altura)
    se (altura < 0.1 ou altura > 3.0) {
      escreva("Aviso: Altura inválida! Definindo para 0.0.\n")
      altura = 0.0
    }

    escreva("Digite seu gênero [M/F]: ")
    leia(genero)
    se (genero != 'M' e genero != 'm' e genero != 'F' e genero != 'f') {
      escreva("Aviso: Gênero inválido! Definindo para 'N' (Não informado).\n")
      genero = 'N'
    }

    escreva("É estudante? (verdadeiro/falso): ")
    leia(estudante)

    escreva("\n==================================\n")
    escreva("  Bem-vindo(a), ", nome, "!\n") 
    escreva("==================================\n")
    escreva("Seu Perfil:\n")
    escreva(" - Nome: ", nome, "\n")
    escreva(" - Idade: ", idade, " anos\n")
    escreva(" - Altura: ", altura, " m\n") 
    escreva(" - Gênero: ", genero, "\n")
    escreva(" - Estudante: ", estudante, "\n")
    escreva("==================================\n")
  }
}
