programa {
  funcao inicio() {
    real valorProduto
    real valorComDesconto
    real valorParcelado
    real comissaoVista
    real comissaoParcelado

    escreva("Digite o valor do produto: ")
    leia(valorProduto)

    se (valorProduto <= 0.0) {
      escreva("Aviso: Valor inválido! Definindo para 0.0.\n")
      valorProduto = 0.0
    }

    valorComDesconto = valorProduto - (valorProduto * 0.1)
    valorParcelado = valorProduto / 3.0
    comissaoVista = valorComDesconto * 0.05
    comissaoParcelado = valorProduto * 0.05

    escreva("\n==================================\n")
    escreva("  Resumo de Valores\n")
    escreva("==================================\n")
    escreva(" - Valor com 10% de desconto: R$ ", valorComDesconto, "\n")
    escreva(" - Valor de cada parcela (3x): R$ ", valorParcelado, "\n")
    escreva(" - Comissão (à vista): R$ ", comissaoVista, "\n")
    escreva(" - Comissão (parcelado): R$ ", comissaoParcelado, "\n")
    escreva("==================================\n")
  }
}
