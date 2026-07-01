#include <stdio.h>

int main() {
    float angulo1;
    float angulo2;
    float angulo3;

    printf("digite o primeiro angulo: ");
    scanf("%f", &angulo1);

    printf("digite o segundo angulo: ");
    scanf("%f", &angulo2);

    angulo3 = (angulo1 + angulo2);
    angulo3 = 180 - angulo3;

    printf("O terceiro angulo do triangulo é: %.2f graus\n", angulo3);

    return 0;
}