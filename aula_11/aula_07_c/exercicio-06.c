#include <stdio.h>

int somar(int a, int b) {
    return a + b;
}

int subtrair(int a, int b) {
    return a - b;
}

int multiplicar(int a, int b) {
    return a * b;
}

int dividir(int a, int b) {
    if (b == 0) {
        b = 1;
    }
    return a / b;
}

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
            resultado = somar(numero1, numero2);
            break;
        case 2:
            printf("Subtraindo os numeros...");
            resultado = subtrair(numero1, numero2);
            break;
        case 3:
            printf("Multiplicando os numeros...");
            resultado = multiplicar(numero1, numero2);
            break;
        case 4:
            printf("Dividindo os numeros...");
            resultado = dividir(numero1, numero2);
            break;
        default:
            printf("Opcao invalida! Definindo resultado para 0.");
            resultado = 0;
    }

    printf("\nResultado da operacao: %d\n", resultado);

    return 0;
}