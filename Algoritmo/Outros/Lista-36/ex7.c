#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool isperfect(int n) {
	int i = 1, sum = 0;

	// Soma todos os números divisíveis pelo número passado
	for(i = 1; i < n; i++)
		if(n % i == 0)
			sum += i;
	// Se a soma for igual ao próprio número passado então ele é um número perfeito
	// retorna verdaddeiro se for perfeito e false caso contrário
	return sum == n ? true : false;
}

// ------------------------------------------

int main(void) {

	int num;

	printf("Digite um numero: ");
	scanf("%d", &num);

	printf((isperfect(num)) ? ("\nO numero e perfeito\n") : ("\nO numero nao e perfeito\n"));

	return 0;
}
