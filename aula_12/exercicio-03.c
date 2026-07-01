#include <stdio.h>

int main() {
    int numeros[10] = {15, 7, 22, 3, 10, 9, 25, 1, 13, 18};
    
    int menor = numeros[0];
    int maior = numeros[0];

    for (int i = 1; i < 10; i++) {
        if (numeros[i] < menor) {
            menor = numeros[i];
        }
        if (numeros[i] > maior) {
            maior = numeros[i];
        }
    }

    printf("O menor valor e: %d\n", menor);
    printf("O maior valor e: %d\n", maior);

    return 0;
}