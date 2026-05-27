programa {
  funcao inicio() {
    real angulo1
    real angulo2
    real angulo3

    escreva("Digite o primeiro ângulo: ")
    leia(angulo1)
    se (angulo1 <= 0.0 ou angulo1 >= 180.0) {
      escreva("Aviso: Primeiro ângulo inválido! Definindo para 60.0.\n")
      angulo1 = 60.0
    }

    escreva("Digite o segundo ângulo: ")
    leia(angulo2)
    se (angulo2 <= 0.0 ou angulo2 >= 180.0) {
      escreva("Aviso: Segundo ângulo inválido! Definindo para 60.0.\n")
      angulo2 = 60.0
    }

    se (angulo1 + angulo2 >= 180.0) {
      escreva("Aviso: A soma dos ângulos excede 180! Definindo ambos para 60.0.\n")
      angulo1 = 60.0
      angulo2 = 60.0
    }

    angulo3 = 180.0 - (angulo1 + angulo2)

    escreva("\n==================================\n")
    escreva("  Resultado do Triângulo\n")
    escreva("==================================\n")
    escreva(" - Primeiro ângulo: ", angulo1, " graus\n")
    escreva(" - Segundo ângulo: ", angulo2, " graus\n")
    escreva(" - Terceiro ângulo: ", angulo3, " graus\n")
    escreva("==================================\n")
  }
}
