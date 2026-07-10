#include <stdio.h>
#include <string.h>

int main() {
    FILE *arquivo = fopen("comentarios.txt", "a");
    
    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }
    
    char autor[100];
    char comentario[500];
    
    while (1) {
        printf("Digite o nome do autor (ou o comentario como FIM para sair): ");
        printf("\nAutor: ");
        scanf(" %[^\n]", autor);
        
        printf("Comentario: ");
        scanf(" %[^\n]", comentario);
        
        if (strcmp(comentario, "FIM") == 0) {
            break;
        }
        
        fprintf(arquivo, "Autor: [%s]\n", autor);
        fprintf(arquivo, "Comentario: [%s]\n", comentario);
        fprintf(arquivo, "-------------------------\n");
        
        printf("Comentario adicionado!\n\n");
    }
    
    fclose(arquivo);
    printf("\nPrograma encerrado.\n");
    
    return 0;
}