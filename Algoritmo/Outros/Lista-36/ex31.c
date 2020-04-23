#include <stdio.h>
#include <stdlib.h>

void intervalo(int n1, int n2) {
	int i;

	if(n2 < n1 || n2 == n1) {
		printf("\n Erro nao ha intervalo entre %d e %d", n1, n2);
		return;
	}

	for(i = n1; i <= n2; i++)
		printf("%d ", i);
}

// --------------------------------------------

int main(void) {

	int n1, n2;

	printf("Digite os intervalos n1 e n2: ");
	scanf(" %d%d", &n1, &n2);

	printf("\nO intervalo entre %d e %d eh: ", n1, n2);
	intervalo(n1, n2);

	printf("\n");

	return 0;
}
