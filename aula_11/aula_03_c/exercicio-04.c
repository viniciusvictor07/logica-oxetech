#include <stdio.h>
#include <string.h>

int main() {
    float peso;
    float altura;
    float IMC;
    char classificacao[50];

    printf("Digite seu peso (kg): ");
    scanf("%f", &peso);
    
    if (peso <= 0.0 || peso > 600.0) {
        printf("Aviso: Peso invalido! Ajustando para 70.0 kg.\n");
        peso = 70.0;
    }

    printf("Digite sua altura (m): ");
    scanf("%f", &altura);
    
    if (altura < 0.1 || altura > 3.0) {
        printf("Aviso: Altura invalida! Ajustando para 1.70 m.\n");
        altura = 1.70;
    }

    IMC = peso / (altura * altura);

    if (IMC < 18.5) {
        strcpy(classificacao, "Abaixo do peso");
    } else if (IMC <= 24.9) {
        strcpy(classificacao, "Peso normal");
    } else if (IMC <= 29.9) {
        strcpy(classificacao, "Sobrepeso");
    } else if (IMC <= 34.9) {
        strcpy(classificacao, "Obesidade grau 1");
    } else if (IMC <= 39.9) {
        strcpy(classificacao, "Obesidade grau 2");
    } else {
        strcpy(classificacao, "Obesidade grau 3");
    }

    printf("\nSeu IMC e de %.2f sua classificacao e: %s\n", IMC, classificacao);

    return 0;
}