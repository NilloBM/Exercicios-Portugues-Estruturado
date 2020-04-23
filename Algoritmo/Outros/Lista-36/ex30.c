#include <stdio.h>
#include <stdlib.h>

void imprimePares(int vet[], int qtd) {
	int i = 0;

	for(i = 0; i < qtd; i++)
		if(vet[i] % 2 == 0)
			printf("%d ", vet[i]);
}

// -------------------------------------

void imprimeNegativos(int vet[], int qtd) {
        int i = 0;

        for(i = 0; i < qtd; i++)
                if(vet[i] < 0)
                        printf("%d ", vet[i]);
}

// --------------------------------------

void lerVetor(int vet[], int qtd) {
        int i = 0;
        for(i = 0; i < qtd; i++) {
                printf("vet[%d]:  ", i);
                scanf("%d", &vet[i]);
        }
}

// --------------------------------------

int main(void) {

	int num;

	printf("Digite o tamanho do vetor: ");
	scanf(" %d", &num);
	int vet[num];

	lerVetor(vet, num);

	printf("\nPares: \n ");
	imprimePares(vet, num);

	printf("\nNegativos: \n ");
	imprimeNegativos(vet, num);

	printf("\n");

	return 0;
}
