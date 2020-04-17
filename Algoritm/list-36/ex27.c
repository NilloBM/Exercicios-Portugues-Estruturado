#include <stdio.h>
#include <stdlib.h>

void lerVetor(int vet[], int qtd) {
	int i = 0;
	for(i = 0; i < qtd; i++) {
		printf("vet[%d]:  ", i);
		scanf("%d", &vet[i]);
	}
}

void imprimirPositivos(int vet[], int qtd) {
	int i = 0;

	printf("\n");
        for(i = 0; i < qtd; i++) {
                if(vet[i] >= 0)
			printf("%d ", vet[i]);
        }
	printf("\n");
}

// -------------------------------------------------------------

int main(void) {

	int num;
	int vet[num];

	printf("Digite o tamanho do vetor: ");
	scanf("%d", &num);

	lerVetor(vet, num);

	imprimirPositivos(vet, num);

	return 0;
}
