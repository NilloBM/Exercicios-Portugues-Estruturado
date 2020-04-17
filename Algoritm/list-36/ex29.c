#include <stdio.h>
#include <stdlib.h>

void lerVetor(int vet[], int qtd) {
        int i = 0;
        for(i = 0; i < qtd; i++) {
                printf("vet[%d]:  ", i);
                scanf("%d", &vet[i]);
        }
}

// ----------------------------------------------

void mesclar(int vetA[], int vetB[], int vetC[], int a, int b, int c) {
	int i = 0, j = 0;

	for(i = 0; i < a; i++)
		vetC[i] = vetA[i];

	for(    ; i < c; i++)
                vetC[i] = vetB[j++];
}

// ----------------------------------------------

void imprimirVetor(int vet[], int qtd) {
        int i = 0;

        printf("\n");

        for(i = 0; i < qtd; i++)
                printf("%d ", vet[i]);

        printf("\n");
}

// ----------------------------------------------


int main(void) {
	int numA, numB;

	printf("\nDigite o tamanho do vetorA: ");
	scanf("%d", &numA);
	int vetA[numA];
	printf("\nLer vetor A: \n");
	lerVetor(vetA, numA);

	printf("\nDigite o tamanho do vetorB: ");
        scanf("%d", &numB);
        int vetB[numB];
	printf("\nLer vetor B: \n");
	lerVetor(vetB, numB);

	int numC = numA + numB;

	int vetC[numC];

	mesclar(vetA, vetB, vetC, numA, numB, numC);

	printf("\n O vetor C resultante de A + B eh: \n");
	imprimirVetor(vetC, numC);

	return 0;
}
