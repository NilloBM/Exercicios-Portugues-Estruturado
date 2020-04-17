#include <stdio.h>
#include <stdlib.h>

int somatorio(int n) {
	int sum = 0, i = 0;

	for (i = 0; i < n + 1; i++) {
		sum += i; // Apenas soma todos os números até n
	}

	return sum;
}

// ---------------------------------------------------------

int main(void) {

	float num;

	printf("Digite um numero: ");
	scanf(" %f", &num);

	printf("Somatorio: %d\n", somatorio(num));

	return 0;
}
