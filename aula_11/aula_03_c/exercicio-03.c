#include <stdio.h>

int main() {
    int numero1;
    int numero2;
    int resultado;
    int opcaoUsuario;

    printf("Digite o primeiro numero: ");
    scanf("%d", &numero1);
    printf("Digite o segundo numero: ");
    scanf("%d", &numero2);
    
    printf("Numeros selecionados: %d e %d\n", numero1, numero2);
    printf("1 para soma\n");
    printf("2 para subtracao\n");
    printf("3 para multiplicacao\n");
    printf("4 para divisao\n");
    printf("Escolha uma das opcoes acima: \n");
    scanf("%d", &opcaoUsuario);

    switch (opcaoUsuario) {
        case 1:
            printf("Somando os numeros...");
            resultado = numero1 + numero2;
            break;
        case 2:
            printf("Subtraindo os numeros...");
            resultado = numero1 - numero2;
            break;
        case 3:
            printf("Multiplicando os numeros...");
            resultado = numero1 * numero2;
            break;
        case 4:
            if (numero2 == 0) {
                printf("Erro: Nao e possivel dividir por zero!");
                resultado = 0;
            } else {
                printf("Dividindo os numeros...");
                resultado = numero1 / numero2;
            }
            break;
        default:
            printf("Opcao invalida! Definindo resultado para 0.");
            resultado = 0;
    }

    printf("\nResultado da operacao: %d\n", resultado);

    return 0;
}