#include <stdio.h>
#include <string.h>

struct Produto {
    char nome[50];
    float preco;
};

int buscarProduto(struct Produto produtos[], int quantidade, char nomeBusca[]);

int main() {
    struct Produto lista[3];
    char busca[50];
    
    printf("--- CADASTRO ---\n");
    for (int i = 0; i < 3; i++) {
        printf("Produto %d\n", i + 1);
        printf("Nome: ");
        scanf("%s", lista[i].nome);
        printf("Preco: ");
        scanf("%f", &lista[i].preco);
        printf("\n");
    }
    
    printf("Voce desejar procurar qual produto ? ");
    scanf("%s", busca);
    
    int indice = buscarProduto(lista, 3, busca);
    
    if (indice != -1) {
        printf("A %s custa R$ %.2f.\n", lista[indice].nome, lista[indice].preco);
    } else {
        printf("Produto nao encontrado\n");
    }
    
    return 0;
}

int buscarProduto(struct Produto produtos[], int quantidade, char nomeBusca[]) {
    for (int i = 0; i < quantidade; i++) {
        if (strcmp(produtos[i].nome, nomeBusca) == 0) {
            return i;
        }
    }
    return -1;
}