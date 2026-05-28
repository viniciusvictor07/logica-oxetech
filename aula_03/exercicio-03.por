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
        resultado = numero1 + numero2
        pare
      caso 2:
        escreva("Subtraindo os números...")
        resultado = numero1 - numero2
        pare
      caso 3:
        escreva("Multiplicando os números...")
        resultado = numero1 * numero2
        pare
      caso 4:
        se (numero2 == 0) {
          escreva("Erro: Não é possível dividir por zero!")
          resultado = 0
          pare
          }
        senao {
          escreva("Dividindo os números...")
          resultado = numero1 / numero2´
          pare
        }
      caso contrario:
        escreva("Opção inválida! Definindo resultado para 0.")
        resultado = 0
      }

    escreva("\nResultado da operação: ", resultado)
  }
}
