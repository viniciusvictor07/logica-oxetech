#include <stdio.h>

int main() {
    int qntNumeros;
    int numeroDigitado;
    int maiorNumero = 0;
    int menorNumero = 0;

    printf("Quantos numeros deseja digitar? ");
    scanf("%d", &qntNumeros);

    for (int i = 0; i < qntNumeros; i++) {
        printf("Qual o valor para o %d o numero? ", i + 1);
        scanf("%d", &numeroDigitado);

        if (i == 0) {
            maiorNumero = numeroDigitado;
            menorNumero = numeroDigitado;
        } else {
            if (numeroDigitado > maiorNumero) {
                maiorNumero = numeroDigitado;
            }
            if (numeroDigitado < menorNumero) {
                menorNumero = numeroDigitado;
            }
        }
    }

    printf("Menor numero digitado: %d\n", menorNumero);
    printf("Maior numero digitado: %d\n", maiorNumero);

    return 0;
}