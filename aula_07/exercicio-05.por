programa {
  funcao inicio() {
    inteiro numero1
    inteiro numero2
    inteiro resultado
    inteiro opcaoUsuario

    escreva("Digite o primeiro número: ")
    leia(numero1)
    escreva("Digite o segundo número: ")
    leia(numero2)
    
    escreva("Números selecionados: ", numero1, " e ", numero2, "\n")
    escreva("1 para soma\n")
    escreva("2 para subtração\n")
    escreva("3 para multiplicação\n")
    escreva("4 para divisão\n")
    escreva("Escolha uma das opções acima: \n")
    leia(opcaoUsuario)

    escolha (opcaoUsuario) {
      caso 1:
        escreva("Somando os números...")
        resultado = somar(numero1, numero2)
        pare
      caso 2:
        escreva("Subtraindo os números...")
        resultado = subtrair(numero1, numero2)
        pare
      caso 3:
        escreva("Multiplicando os números...")
        resultado = multiplicar(numero1, numero2)
        pare
      caso 4:
        escreva("Dividindo os números...")
        resultado = dividir(numero1, numero2)
        pare
      
      caso contrario:
        escreva("Opção inválida! Definindo resultado para 0.")
        resultado = 0
      }

    escreva("\nResultado da operação: ", resultado)
  }

  funcao real somar(inteiro a, inteiro b) {
    retorne a + b
  }

  funcao real subtrair(inteiro a, inteiro b) {
     retorne a - b
  }

  funcao real multiplicar(inteiro a, inteiro b) {
    retorne a * b
  }

  funcao real dividir(inteiro a, inteiro b) {
    se (b == 0) {
      b = 1
    }
    retorne a / b
  }
}
