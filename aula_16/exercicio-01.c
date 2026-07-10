#include <stdio.h>

int main() {
    FILE *arquivo = fopen("entrada.txt", "r");
    
    if (arquivo == NULL) {
        printf("Erro ao abrir o arquivo.\n");
        return 1;
    }
    
    int contador = 0;
    char c = fgetc(arquivo);
    
    while (c != EOF) {
        contador++;
        c = fgetc(arquivo);
    }
    
    fclose(arquivo);
    
    printf("Total de caracteres: %d\n", contador);
    
    return 0;
}