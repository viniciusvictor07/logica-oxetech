#include <stdio.h>

void classificarAluno(float media);
float calcularMedia(float nota1, float nota2);

int main()
{
    float media = calcularMedia(6, 7);
    
    classificarAluno(media);
    return 0;
}

float calcularMedia(float nota1, float nota2) {
    return (nota1 + nota2) / 2.0;
}

void classificarAluno(float media)
{
    if (media >= 6)
    {
        printf("Aprovado!\n");
    }
    else
    {
        printf("Reprovado!\n");
    }
}