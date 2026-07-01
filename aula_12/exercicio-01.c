#include <stdio.h>

int main() {
    int numeros[5];

    for (int i = 0; i < 5; i++) {
        printf("Digite o valor %d: ", i + 1);
        scanf("%d", &numeros[i]);
    }

    printf("\nLista do valores (na ordem inversa): ");
    for (int i = 4; i >= 0; i--) {
        printf("%d ", numeros[i]);
    }
    printf("\n");

    return 0;
}