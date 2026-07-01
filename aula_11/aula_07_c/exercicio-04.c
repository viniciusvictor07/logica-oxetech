#include <stdio.h>
#include <stdbool.h>

bool analisarAno(int anoInformado) {
    if ((anoInformado % 4 == 0 && anoInformado % 100 != 0) || anoInformado % 400 == 0) {
        return true;
    } else {
        return false;
    }
}

int main() {
    int qntAnos;
    int anoInformado;

    printf("Quantos anos deseja analisar? ");
    scanf("%d", &qntAnos);

    for (int i = 0; i < qntAnos; i++) {
        printf("Digite o %d o ano: ", i + 1);
        scanf("%d", &anoInformado);

        bool ehBissexto = analisarAno(anoInformado);

        if (ehBissexto) {
            printf("%d e um ano bissexto\n", anoInformado);
        } else {
            printf("%d nao e um ano bissexto\n", anoInformado);
        }
    }

    return 0;
}