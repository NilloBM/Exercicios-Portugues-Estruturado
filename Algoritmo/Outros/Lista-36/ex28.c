#include <stdio.h>
#include <stdlib.h>

void lerVetor(int vet[], int qtd) {
	int i = 0;
	for(i = 0; i < qtd; i++) {
		printf("vet[%d]:  ", i);
		scanf("%d", &vet[i]);
	}
}

// -----------------------------------------------------------

void somarValor(int vet[], int qtd, int x) {
	int i = 0;

	for(i = 0; i < qtd; i++) vet[i] += x;
}

// ------------------------------------------------------------

void imprimirVetor(int vet[], int qtd) {
	int i = 0;

	printf("\n");

        for(i = 0; i < qtd; i++)
		printf("%d ", vet[i]);

	printf("\n");
}

// -------------------------------------------------------------

int main(void) {

	int num;
	int vet[num];

	printf("Digite o tamanho do vetor: ");
	scanf("%d", &num);

	lerVetor(vet, num);

	// Soma 5 unidades a cada elemento do vetor
	somarValor(vet, num, 5);

	imprimirVetor(vet, num);

	return 0;
}
