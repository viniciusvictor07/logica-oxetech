#include <stdio.h>

int main()
{
    int idade;
    float altura;
    char genero;
    char nome[20];

    printf("Digite sua idade: ");
    scanf("%d", &idade);

    printf("Digite sua altura: ");
    scanf("%f", &altura);

    printf("Digite seu genero: ");
    scanf(" %c", &genero);

    printf("Digite seu nome: ");
    scanf("%s", nome);

    printf("Idade: %d\n", idade);
    printf("Altura: %.2f\n", altura);
    printf("Genero: %c\n", genero);
    printf("Nome: %s\n", nome);

    return 0;
}
