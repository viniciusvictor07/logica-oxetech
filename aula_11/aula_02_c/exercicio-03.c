#include <stdio.h>

int main() {
    char nome[100];
    float peso;
    float altura;
    float IMC;

    printf("nome: ");
    scanf("%s", nome);

    printf("peso (kg): ");
    scanf("%f", &peso);

    printf("altura (m): ");
    scanf("%f", &altura);

    IMC = peso / (altura * altura);
    printf("%s, seu IMC e %.2f\n", nome, IMC);

    return 0;
}