#include <stdio.h>

int main() {
    char nome[100];
    float nota1;
    float nota2;
    float media;

    printf("digite seu nome: ");
    scanf("%s", nome);

    printf("digite a primeira nota: ");
    scanf("%f", &nota1);

    printf("digite a segunda nota: ");
    scanf("%f", &nota2);

    media = (nota1 + nota2) / 2;
    printf("O aluno %s obteve a media final %.2f\n", nome, media);

    return 0;
}