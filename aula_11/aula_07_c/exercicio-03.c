#include <stdio.h>
#include <string.h>

void classificarAluno(float media, int faltas, char resultado[]) {
    if (media < 0 || media > 10) {
        printf("Valor de media incorreto! Definindo media para 6.0 ");
        media = 6.0;
    }
    
    if (media >= 9.5 && faltas <= 10) {
        strcpy(resultado, "APROVADO COM LOUVOR");
    } else if (media >= 7.0 && faltas <= 10) {
        strcpy(resultado, "APROVADO");
    } else {
        strcpy(resultado, "REPROVADO");
    }
}

int main() {
    float mediaFinal;
    int qntFaltas;
    char situacao[30];

    printf("Digite a media final: ");
    scanf("%f", &mediaFinal);
    
    printf("Digite a quantidade de faltas: ");
    scanf("%d", &qntFaltas);
    
    classificarAluno(mediaFinal, qntFaltas, situacao);
    printf("\nSituacao do aluno: %s\n", situacao);

    return 0;
}