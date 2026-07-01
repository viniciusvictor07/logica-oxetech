#include <stdio.h>
#include <stdbool.h>

int main() {
    int numeros[50] = {
        5, 8, 12, 3, 8, 15, 7, 8, 20, 1,
        9, 14, 8, 6, 11, 18, 2, 8, 13, 4,
        10, 8, 16, 19, 8, 5, 7, 8, 12, 3,
        17, 8, 14, 6, 8, 20, 9, 1, 8, 15,
        11, 8, 2, 13, 8, 4, 10, 8, 16, 19
    };
    
    int numeroProcurado;
    bool encontrado = false;

    printf("Digite o numero a procurar: ");
    scanf("%d", &numeroProcurado);

    for (int i = 0; i < 50; i++) {
        if (numeros[i] == numeroProcurado) {
            if (!encontrado) {
                printf("Encontrado nas posicoes:\n");
                encontrado = true;
            }
            printf("%d\n", i + 1);
        }
    }

    if (!encontrado) {
        printf("Numero nao encontrado.\n");
    }

    return 0;
}