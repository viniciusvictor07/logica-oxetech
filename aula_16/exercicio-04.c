#include <stdio.h>

int main() {
    FILE *origem = fopen("origem.txt", "r");
    if (origem == NULL) {
        printf("Erro ao abrir o arquivo de origem.\n");
        return 1;
    }
    
    FILE *destino = fopen("destino.txt", "w");
    if (destino == NULL) {
        printf("Erro ao criar o arquivo de destino.\n");
        fclose(origem);
        return 1;
    }
    
    int c;
    while ((c = fgetc(origem)) != EOF) {
        fputc(c, destino);
    }
    
    fclose(origem);
    fclose(destino);
    
    printf("Arquivo copiado com sucesso!\n");
    
    return 0;
}