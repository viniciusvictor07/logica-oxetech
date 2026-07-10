#include <stdio.h>
#include <string.h>

int ehPalindromo(char palavra[]);

int main() {
    char palavra[50];
    
    printf("Digite uma palavra: ");
    scanf("%s", palavra);
    
    if (ehPalindromo(palavra)) {
        printf("E palindromo!\n");
    } else {
        printf("Nao e palindromo.\n");
    }
    
    return 0;
}

int ehPalindromo(char palavra[]) {
    int i = 0;
    int j = strlen(palavra) - 1;
    
    while (i < j) {
        if (palavra[i] != palavra[j]) {
            return 0;
        }
        i++;
        j--;
    }
    return 1;
}