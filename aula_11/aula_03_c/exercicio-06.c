#include <stdio.h>
#include <string.h>

int main() {
    float temperatura;
    char sintomas;
    char situacao[50];

    printf("Qual a sua temperatura? ");
    scanf("%f", &temperatura);

    if (temperatura < 0.0 || temperatura > 50.0) {
        printf("Aviso: Temperatura invalida! Ajustando para 36.5C.\n");
        temperatura = 36.5;
    }

    printf("Voce esta com secrecao, tosse e dor no corpo? (S/N) ");
    scanf(" %c", &sintomas);

    if (sintomas != 'S' && sintomas != 'N') {
        printf("Aviso: Opcao invalida! Definindo resposta para N.\n");
        sintomas = 'N';
    }

    if (temperatura >= 37.0 && sintomas == 'S') {
        strcpy(situacao, "Exames Especiais");
    } else if (temperatura >= 37.0 && sintomas == 'N') {
        strcpy(situacao, "Exames Basicos");
    } else if (temperatura < 37.0 && sintomas == 'S') {
        strcpy(situacao, "Exames Basicos");
    } else {
        strcpy(situacao, "Liberado");
    }

    printf("\nResultado da triagem: %s\n", situacao);

    return 0;
}