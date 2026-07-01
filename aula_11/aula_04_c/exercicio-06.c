#include <stdio.h>
#include <string.h>

int main() {
    int qntClientes;
    int tipoMidia;
    float valorTotal = 0.0;

    int qtdRadio = 0;
    int qtdTv = 0;
    int qtdRevista = 0;
    int qtdOutdoor = 0;

    printf("Quantos clientes deseja cadastrar? ");
    scanf("%d", &qntClientes);

    int i = 0;
    while (i < qntClientes) {
        printf("\n----- Cliente %d -----\n", i + 1);
        printf("1. Radio\n");
        printf("2. TV\n");
        printf("3. Revista\n");
        printf("4. Outdoor\n");
        printf("Escolha o tipo de midia: ");
        scanf("%d", &tipoMidia);
        
        switch (tipoMidia) {
            case 1: {
                char tipoFaixa[10];
                printf("Escolha o tipo de faixa (AM/FM): ");
                scanf("%s", tipoFaixa);

                if (strcmp(tipoFaixa, "FM") == 0) {
                    valorTotal += 500;
                }
                if (strcmp(tipoFaixa, "AM") == 0) {
                    valorTotal += 300;
                }
                
                qtdRadio++;
                i++;
                break;
            }
            case 2: {
                int horarioExibicao;
                printf("Qual o horario de exibicao? ");
                scanf("%d", &horarioExibicao);

                if (horarioExibicao <= 20) {
                    valorTotal += 1200;
                }
                if (horarioExibicao > 20) {
                    valorTotal += 2000;
                }
                
                qtdTv++;
                i++;
                break;
            }
            case 3: {
                valorTotal += 750;
                qtdRevista++;
                i++;
                break;
            }
            case 4: {
                valorTotal += 1500;
                qtdOutdoor++;
                i++;
                break;
            }
            default: {
                printf("Opcao de midia invalida! Tente novamente.\n");
            }
        }
    }

    printf("\n------------ RELATORIO FINAL -----------\n");
    printf("O valor total que a agencia ira receber: R$ %.2f\n", valorTotal);
    printf("Quantidade de anuncios para Radio: %d\n", qtdRadio);
    printf("Quantidade de anuncios para TV: %d\n", qtdTv);
    printf("Quantidade de anuncios para Revista: %d\n", qtdRevista);
    printf("Quantidade de anuncios para Outdoor: %d\n", qtdOutdoor);

    return 0;
}