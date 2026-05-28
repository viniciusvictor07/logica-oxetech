programa {
  funcao inicio() {
    cadeia nome
    inteiro idade
    cadeia classe


    escreva("Olá, qual o seu nome ? ")
    leia(nome)

    escreva(nome, ", qual a sua idade ? ")
    leia(idade)

    se (idade < 0 ou idade > 120) {
      escreva("Aviso: Idade inválida! Ajustando para 18 anos.\n")
      idade = 18
    }

    se (idade < 16) {
      classe = "Não eleitor"
    }
    senao se (idade < 18) {
      classe = "Eleitor Facultativo"
    }
    senao se (idade <= 65) {
      classe = "Eleitor Obrigatório"
    }
    senao {
      classe = "Eleitor Facultativo"
    }

    escreva("\n", nome, ", sua classificação eleitoral é: ", classe, ".")
  }
}
