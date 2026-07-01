#include <stdio.h>
#include <string.h>

int main() {
    char nome[100];
    int idade;
    float altura;
    char genero;
    char estudante[20];

    printf("Digite seu nome: ");
    scanf(" %s", nome); 

    printf("Digite sua idade: ");
    scanf("%d", &idade);
    if (idade < 0 || idade > 120) {
        printf("Aviso: Idade inválida! Definindo para 0.\n");
        idade = 0;
    }

    printf("Digite sua altura (m): ");
    scanf("%f", &altura);
    if (altura < 0.1 || altura > 3.0) {
        printf("Aviso: Altura inválida! Definindo para 0.0.\n");
        altura = 0.0;
    }

    printf("Digite seu gênero [M/F]: ");
    scanf(" %c", &genero);
    if (genero != 'M' && genero != 'm' && genero != 'F' && genero != 'f') {
        printf("Aviso: Gênero inválido! Definindo para 'N' (Não informado).\n");
        genero = 'N';
    }

    printf("É estudante? (sim/nao): ");
    scanf(" %s", estudante);

    printf("\n==================================\n");
    printf("   Bem-vindo(a), %s!\n", nome);
    printf("==================================\n");
    printf("Seu Perfil:\n");
    printf(" - Nome: %s\n", nome);
    printf(" - Idade: %d anos\n", idade);
    printf(" - Altura: %.2f m\n", altura);
    printf(" - Gênero: %c\n", genero);
    printf(" - Estudante: %s\n", estudante);
    printf("==================================\n");

    return 0;
}