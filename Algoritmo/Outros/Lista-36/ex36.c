#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>

#define TAM 10

int vet[TAM];

// ----------------------------

void lerVetor(int vet[], int qtd) {
        int i = 0;
        for(i = 0; i < qtd; i++) {
                printf("vet[%d]:  ", i);
                scanf("%d", &vet[i]);
        }
}

// ---------------------------

void imprimeVetor(char ch) {
	int i = 0;

	// tolower converte um letra minuscula para maiuscula
	if(ch == tolower('c')) {
		for(i = 0; i < 10; i++)
			printf("%d ", vet[i]);
	} else
		if (ch == tolower('i')) {
			for(i = 9; i >= 0; i--)
				printf("%d ", vet[i]);
		}
		else printf("\nOpcao invalida");
}

// ------------------------------

int main(void) {

	printf("\nImprimir vetor em ordem (C)orreta ou (I)nversa:  ");
	char ch = getchar();

	printf("\n");

	lerVetor(vet, TAM);
	imprimeVetor(ch);

	return 0;
}
