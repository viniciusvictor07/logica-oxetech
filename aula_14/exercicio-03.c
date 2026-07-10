#include <stdio.h>
#include <string.h>

int main() {
    char frase1[100];
    char frase2[45];
    
    printf("Digite a primeira frase: ");
    scanf(" %[^\n]", frase1);
    
    printf("Digite a segunda frase: ");
    scanf(" %[^\n]", frase2);
    
    strcat(frase1, frase2);
    
    printf("Frase resultante: %s\n", frase1);
    
    return 0;
}