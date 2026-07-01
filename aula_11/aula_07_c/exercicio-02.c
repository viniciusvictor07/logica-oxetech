#include <stdio.h>

void exibirMensagem(char nome[], int idade) {
    if (idade < 0 || idade > 120) {
        printf("Idade invalida! Definindo idade para 1.\n");
        idade = 1;
    }
    
    printf("Ola %s, voce tem %d anos. Seja bem-vindo(a)!\n", nome, idade);
}

int main() {
    char nomeUsuario[100];
    int idadeUsuario;

    printf("Escreva seu nome: ");
    scanf("%s", nomeUsuario);

    printf("%s, digite sua idade: ", nomeUsuario);
    scanf("%d", &idadeUsuario);

    exibirMensagem(nomeUsuario, idadeUsuario);

    return 0;
}