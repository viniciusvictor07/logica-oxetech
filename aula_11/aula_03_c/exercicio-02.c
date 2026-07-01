#include <stdio.h>

int main() {
    int idadeUsuario;

    printf("Digite sua idade: ");
    scanf("%d", &idadeUsuario);

    if (idadeUsuario < 0 || idadeUsuario > 120) {
        printf("Idade invalida. Definindo idade para 0.\n");
        idadeUsuario = 0;
    }

    if (idadeUsuario >= 65) {
        printf("Voce e um(a) idoso(a).");
    } else if (idadeUsuario >= 18) {
        printf("Voce e um(a) adulto(a).");
    } else if (idadeUsuario >= 13) {
        printf("Voce e um(a) adolescente.");
    } else {
        printf("Voce e uma crianca.");
    }

    return 0;
}