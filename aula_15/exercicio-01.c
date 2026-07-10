#include <stdio.h>

struct Pessoa {
    char nome[50];
    int idade;
};

int main() {
    struct Pessoa p;
    
    printf("------- CADASTRO -------\n");
    printf("Digite seu nome: ");
    scanf("%s", p.nome);
    
    printf("Digite sua idade: ");
    scanf("%d", &p.idade);
    
    printf("\n---- DADOS ----\n");
    printf("Nome: %s\n", p.nome);
    printf("Idade: %d anos\n", p.idade);
    
    return 0;
}