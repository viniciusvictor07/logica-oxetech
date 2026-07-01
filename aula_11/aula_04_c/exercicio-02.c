#include <stdio.h>

int main() {
    int qntClientes;
    float valorCompraCliente;
    float valorTotal = 0;

    printf("Quantos clientes deseja cadastrar? ");
    scanf("%d", &qntClientes);

    for (int i = 0; i < qntClientes; i++) {
        printf("Quanto foi o valor de compra em R$ do %d o cliente? ", i + 1);
        scanf("%f", &valorCompraCliente);
        
        if (valorCompraCliente < 0) {
            printf("Valor invalido. Definindo para 0.\n");
            valorCompraCliente = 0;
        }
        valorTotal += valorCompraCliente;
    }

    printf("O total arrecadado pela loja foi: R$ %.2f\n", valorTotal);

    return 0;
}