#include <stdio.h>
#include <string.h>

int main() {
    char palavra[100];
    
    printf("Digite uma palavra: ");
    scanf("%s", palavra);
    
    int tamanho = strlen(palavra);
    
    if (tamanho > 15) {
        printf("Palavra longa\n");
    } else if (tamanho > 8) {
        printf("Palavra média\n");
    } else if (tamanho > 5) {
        printf("Palavra pequena\n");
    }
    
    return 0;
}