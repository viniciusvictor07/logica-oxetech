#include <stdio.h>

int main() {
    float valorProduto;
    float valorComDesconto;
    float valorParcelado;
    float comissaoVista;
    float comissaoParcelado;
    
    printf("Digite o valor do produto: ");
    scanf("%f", &valorProduto);

    valorComDesconto = valorProduto - (valorProduto * 0.1);
    valorParcelado = valorProduto / 3;
    comissaoVista = valorComDesconto * 0.05;
    comissaoParcelado = valorProduto * 0.05;

    printf("Valor com 10%% de desconto: R$ %.2f\n", valorComDesconto);
    printf("Valor de cada parcela (3x sem juros): R$ %.2f\n", valorParcelado);
    printf("Comissao do vendedor (a vista): R$ %.2f\n", comissaoVista);
    printf("Comissao do vendedor (parcelado): R$ %.2f\n", comissaoParcelado);

    return 0;
}