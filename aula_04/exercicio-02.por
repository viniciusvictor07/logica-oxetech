programa {
  funcao inicio() {
    inteiro qntClientes
    real valorCompraCliente
    real valorTotal = 0

    escreva("Quantos clientes deseja cadastrar? ")
    leia(qntClientes)

    para (inteiro i = 0; i < qntClientes; i++) {
      escreva("Quanto foi o valor de compra em R$ do ", i+1, "º cliente? ")
      leia(valorCompraCliente)
      
      se (valorCompraCliente < 0) {
        escreva("Valor inválido. Definindo para 0.\n")
        valorCompraCliente = 0
      }
      valorTotal += valorCompraCliente
    }

    escreva("O total arrecadado pela loja foi: R$ ", valorTotal)
  }
}
