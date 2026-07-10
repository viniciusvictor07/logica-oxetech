#include <stdio.h>
#include <string.h>

int main() {
    char palavra1[100];
    char palavra2[100];
    
    printf("Digite a primeira palavra: ");
    scanf("%s", palavra1);
    
    printf("Digite a segunda palavra: ");
    scanf("%s", palavra2);
    
    if (strcmp(palavra1, palavra2) == 0) {
        printf("As palavras sao iguais.\n");
    } else {
        printf("As palavras sao diferentes.\n");
    }
    
    return 0;
}