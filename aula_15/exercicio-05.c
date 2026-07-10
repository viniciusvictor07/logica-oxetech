#include <stdio.h>

struct Endereco {
    char rua[100];
    int numero;
    char cidade[50];
};

struct Funcionario {
    char nome[50];
    char cargo[50];
    struct Endereco end;
};

int main() {
    struct Funcionario f[2];
    
    printf("--- CADASTRO ---\n");
    for (int i = 0; i < 2; i++) {
        printf("%do Funcionario\n", i + 1);
        
        printf("Nome: ");
        scanf(" %[^\n]", f[i].nome);
        
        printf("Cargo: ");
        scanf(" %[^\n]", f[i].cargo);
        
        printf("Rua: ");
        scanf(" %[^\n]", f[i].end.rua);
        
        printf("Numero: ");
        scanf("%d", &f[i].end.numero);
        
        printf("cidade: ");
        scanf(" %[^\n]", f[i].end.cidade);
        
        printf("\n");
    }
    
    printf("---------- DADOS FUNCIONARIOS ----------\n");
    for (int i = 0; i < 2; i++) {
        printf("Funcionario: %s\n", f[i].nome);
        printf("Cargo: %s\n", f[i].cargo);
        printf("Endereco: %s, %d - %s\n\n", f[i].end.rua, f[i].end.numero, f[i].end.cidade);
    }
    
    return 0;
}