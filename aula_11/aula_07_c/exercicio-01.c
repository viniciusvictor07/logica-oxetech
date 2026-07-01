#include <stdio.h>

float calcularAreaRetangulo(float base, float altura) {
    if (base <= 0) {
        base = 1;
    }
    if (altura <= 0) {
        altura = 1;
    }
    
    return base * altura;
}

int main() {
    float baseRetangulo;
    float alturaRetangulo;

    printf("Digite a base do retangulo: ");
    scanf("%f", &baseRetangulo);

    printf("Digite a altura do retangulo: ");
    scanf("%f", &alturaRetangulo);

    float areaRetangulo = calcularAreaRetangulo(baseRetangulo, alturaRetangulo);
    printf("Area do retangulo: %.2f\n", areaRetangulo);

    return 0;
}