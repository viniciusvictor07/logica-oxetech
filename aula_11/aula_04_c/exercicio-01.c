#include <stdio.h>

int main() {
    int qntUsuarios;
    char nomeUsuario[100];
    int idadeUsuario;
    char situacaoCNH[50];

    printf("Quantos usuarios deseja cadastrar? ");
    scanf("%d", &qntUsuarios);
    
    for (int i = 0; i < qntUsuarios; i++) {
        printf("Digite o nome do %d o usuario: \n", i + 1);
        scanf("%s", nomeUsuario);
        
        printf("Digite a idade de %s: ", nomeUsuario);
        scanf("%d", &idadeUsuario);

        if (idadeUsuario < 0 || idadeUsuario > 120) {
            printf("\nIdade invalida! Definindo idade para 16 anos.\n");
            idadeUsuario = 16;
        }

        if (idadeUsuario < 18) {
            sprintf(situacaoCNH, "Usuario nao pode tirar a CNH!\n");
        } else {
            sprintf(situacaoCNH, "Usuario pode tirar a CNH!\n");
        }

        printf("%s tem %d anos. %s\n", nomeUsuario, idadeUsuario, situacaoCNH);
    }

    return 0;
}