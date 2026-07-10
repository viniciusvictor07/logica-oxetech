#include <stdio.h>

struct Aluno {
    char nome[50];
    float nota;
};

int main() {
    struct Aluno alunos[100];
    int quantidade;
    float soma = 0.0;
    
    printf("Quantas alunos voce quer cadastrar ? ");
    scanf("%d", &quantidade);
    
    for (int i = 0; i < quantidade; i++) {
        printf("\n%do Aluno\n", i + 1);
        printf("Nome: ");
        scanf("%s", alunos[i].nome);
        printf("Nota: ");
        scanf("%f", &alunos[i].nota);
        
        soma += alunos[i].nota;
    }
    
    printf("\n");
    
    for (int i = 0; i < quantidade; i++) {
        printf("Dados do %do Aluno:\n", i + 1);
        printf("Nome: %s\n", alunos[i].nome);
        printf("Nota: %.1f\n\n", alunos[i].nota);
    }
    
    float media = soma / quantidade;
    printf("A media geral e %.2f\n", media);
    
    return 0;
}