#include <stdio.h>
#include <string.h>

int main() {
    char nome[100];
    int idade;
    char classe[50];

    printf("Ola, qual o seu nome ? ");
    scanf("%s", nome);

    printf("%s, qual a sua idade ? ", nome);
    scanf("%d", &idade);

    if (idade < 0 || idade > 120) {
        printf("Aviso: Idade invalida! Ajustando para 18 anos.\n");
        idade = 18;
    }

    if (idade < 16) {
        strcpy(classe, "Nao eleitor");
    } else if (idade < 18) {
        strcpy(classe, "Eleitor Facultativo");
    } else if (idade <= 65) {
        strcpy(classe, "Eleitor Obrigatorio");
    } else {
        strcpy(classe, "Eleitor Facultativo");
    }

    printf("\n%s, sua classificacao eleitoral e: %s.\n", nome, classe);

    return 0;
}