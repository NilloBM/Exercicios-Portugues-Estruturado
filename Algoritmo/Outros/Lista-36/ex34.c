#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define TAM 5

int vetA[TAM];
int vetB[TAM];

// ------------------------------------------------------------------

int fatorial(int n) {
	return ((n == 1) ? n : fatorial(n - 1) * n);
}

// -------------------------------------------------------------------

void vetFatorial() {
	int i = 0;

	for(i = 0; i < TAM; i++) {
		vetB[i] = fatorial(vetA[i]);
	}
}

// -------------------------------------------------------------------

int main(void) {

	while(true) {

		printf("\n");

		int i = 0;

		printf("vetA[0] = ");
		scanf(" %d", &vetA[0]);

		if(vetA[0] == 0) break;

		for(i = 1; i < TAM; i++) {
			printf("vetA[%d] = ", i);
			scanf(" %d", &vetA[i]);
		}

		vetFatorial(vetA);

		for(i = 0; i < TAM; i++) {
			printf("\n%d", vetB[i]);
		}
	}

	printf("\n");

	return 0;
}


