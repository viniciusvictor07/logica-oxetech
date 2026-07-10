#include <stdio.h>

int main() {
    char p1[50];
    char p2[50];
    char p3[50];
    
    printf("Palavra 1: ");
    scanf("%s", p1);
    
    printf("Palavra 2: ");
    scanf("%s", p2);
    
    printf("Palavra 3: ");
    scanf("%s", p3);
    
    printf("\n");
    printf("%s\n", p3);
    printf("%s\n", p2);
    printf("%s\n", p1);
    
    return 0;
}