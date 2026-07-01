#include <stdio.h>

int main() {
    int numeroDigitado;
    int numerosNegativos = 0;
    int numerosPositivos = 0;

    printf("Digite numeros positivos ou negativos. O programa encerra se o numero for 0.\n");
    
    do {
        printf("Digite um numero: ");
        scanf("%d", &numeroDigitado);

        if (numeroDigitado > 0) {
            numerosPositivos += 1;
        } else if (numeroDigitado < 0) {
            numerosNegativos += 1;
        }
    } while (numeroDigitado != 0);

    printf("Quantidade de numeros positivos: %d\n", numerosPositivos);
    printf("Quantidade de numeros negativos: %d\n", numerosNegativos);

    return 0;
}