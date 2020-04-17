#include <stdio.h>
#include <stdlib.h>

float valor_s(float n) {
	// Primeiro verifica se n não é Zero para não dar erro, se não for Zero retorna o cálculo se não retorna o próprio n
	return (n != 0) ? (1 + 1/2 + 1/3 + 1/4 + 1/5 + 1/n) : n;
}

// ---------------------------------------------------------

int main(void) {

	float num;

	printf("Digite um numero: ");
	scanf(" %f", &num);

	printf("Valor de S = %f\n", valor_s(num));

	return 0;
}
