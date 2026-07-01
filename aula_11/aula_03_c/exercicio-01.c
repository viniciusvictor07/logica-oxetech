#include <stdio.h>

int main() {
    int anoAtual;
    int anoNascimento;

    printf("Digite o ano atual: ");
    scanf("%d", &anoAtual);

    if (anoAtual != 2026) {
        printf("Ano atual invalido, definindo valor para 2026.\n");
        anoAtual = 2026;
    }

    printf("Digite seu ano de nascimento: ");
    scanf("%d", &anoNascimento);

    if (anoNascimento < 0 || anoNascimento > anoAtual) {
        printf("Ano de nascimento invalido, definindo data para 2026.\n");
        anoNascimento = 2026;
    }

    int idadeUsuario = anoAtual - anoNascimento;

    printf("\nEm %d o usuario completara %d anos\n", anoAtual, idadeUsuario);

    if (idadeUsuario >= 18) {
        printf("Usuario e maior de idade, pode tirar habilitacao!");
    } else {
        printf("Usuario e menor de idade, nao pode tirar habilitacao!");
    }

    return 0;
}