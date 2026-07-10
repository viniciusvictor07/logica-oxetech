#include <stdio.h>

struct Pessoa {
    char nome[50];
    int idade;
};

void exibirPessoa(struct Pessoa p);

int main() {
    struct Pessoa p;
    
    printf("Qual o seu nome ? ");
    scanf("%s", p.nome);
    
    printf("Qual a sua idade ? ");
    scanf("%d", &p.idade);
    
    printf("\nBem-vindo(a), %s!\n", p.nome);
    printf("Seu Dados:\n");
    
    exibirPessoa(p);
    
    return 0;
}

void exibirPessoa(struct Pessoa p) {
    printf("Nome: %s\n", p.nome);
    printf("Idade: %d\n", p.idade);
}