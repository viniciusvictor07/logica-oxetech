#include <stdio.h>
#include <string.h>

int main() {
    int valorPH;
    char tipoSubstancia[20];

    printf("Digite valores de pH. O programa encerrara se o numero for -1.\n\n");
    
    do {
        printf("Digite um valor de pH: ");
        scanf("%d", &valorPH);

        if (valorPH == -1) {
            printf("Encerrando programa...\n");
        } else {
            if (valorPH < 7) {
                strcpy(tipoSubstancia, "acida");
            } else if (valorPH > 7) {
                strcpy(tipoSubstancia, "basica");
            } else {
                strcpy(tipoSubstancia, "neutra");
            }

            printf("O tipo da substancia e: %s\n\n", tipoSubstancia);
        }
    } while (valorPH != -1);

    return 0;
}