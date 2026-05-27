programa {
  funcao inicio() {
    cadeia nome
    real peso
    real altura
    real IMC
    cadeia classificacao

    escreva("Digite seu nome: ")
    leia(nome)
    se (nome == "") {
      nome = "Usuário"
    }

    escreva("Digite seu peso (kg): ")
    leia(peso)
    se (peso <= 0.0 ou peso > 600.0) {
      escreva("Aviso: Peso inválido! Ajustando para 70.0 kg.\n")
      peso = 70.0
    }

    escreva("Digite sua altura (m): ")
    leia(altura)
    se (altura < 0.1 ou altura > 3.0) {
      escreva("Aviso: Altura inválida! Ajustando para 1.70 m.\n")
      altura = 1.70
    }

    IMC = peso / (altura * altura)

    se (IMC < 18.5) {
      classificacao = "Abaixo do peso"
    } senao se (IMC < 25.0) {
      classificacao = "Peso normal"
    } senao {
      classificacao = "Acima do peso"
    }

    escreva("\n==================================\n")
    escreva("  Resultado do IMC para ", nome, "\n")
    escreva("==================================\n")
    escreva(" - Peso: ", peso, " kg\n")
    escreva(" - Altura: ", altura, " m\n")
    escreva(" - IMC: ", IMC, "\n")
    escreva(" - Classificação: ", classificacao, "\n")
    escreva("==================================\n")
  }
}
