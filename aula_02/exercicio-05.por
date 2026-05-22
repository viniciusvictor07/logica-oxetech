programa {
  funcao inicio() {
  real valorProduto
  real valorComDesconto
  inteiro valorParcelado
  real comissaoVista
  real comissaoParcelado
  
  escreva("Digite o valor do produto: ")
  leia(valorProduto)

  valorComDesconto = valorProduto - (valorProduto * 0.1)
  valorParcelado = valorProduto / 3
  comissaoVista = valorComDesconto * 0.05
  comissaoParcelado = valorProduto * 0.05

  escreva("Valor com 10% de desconto: R$ ", valorComDesconto, "\n")
  escreva("Valor de cada parcela (3x sem juros): R$ ", valorParcelado, "\n")
  escreva("Comissão do vendedor (à vista): R$ ", comissaoVista, "\n")
  escreva("Comissão do vendedor (parcelado): R$ ", comissaoParcelado, "\n")
  }
}
