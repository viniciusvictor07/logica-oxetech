#include <stdio.h>

int main() {
    int quantidade;
    
    printf("Quantos usuarios deseja cadastrar? ");
    scanf("%d", &quantidade);
    
    FILE *arquivoGravar = fopen("usuarios.txt", "w");
    if (arquivoGravar == NULL) {
        printf("Erro ao criar o arquivo.\n");
        return 1;
    }
    
    char nome[50];
    int idade;
    char email[50];
    
    for (int i = 0; i < quantidade; i++) {
        printf("\n--- Cadastro do %do Usuario ---\n", i + 1);
        printf("Digite o nome: ");
        scanf("%s", nome);
        
        printf("Digite a idade: ");
        scanf("%d", &idade);
        
        printf("Digite o email: ");
        scanf("%s", email);
        
        fprintf(arquivoGravar, "%s %d %s\n", nome, idade, email);
    }
    
    fclose(arquivoGravar);
    printf("\nTodos os dados gravados com sucesso!\n\n");
    
    FILE *arquivoLer = fopen("usuarios.txt", "r");
    if (arquivoLer == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }
    
    char nomeLido[50];
    int idadeLida;
    char emailLido[50];
    
    printf("--- DADOS LIDOS DO ARQUIVO ---\n");
    while (fscanf(arquivoLer, "%s %d %s", nomeLido, &idadeLida, emailLido) == 3) {
        printf("Nome: %s\n", nomeLido);
        printf("Idade: %d\n", idadeLida);
        printf("Email: %s\n\n", emailLido);
    }
    
    fclose(arquivoLer);
    
    return 0;
}