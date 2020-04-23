#include <stdio.h>
#include <stdlib.h>

int fibonacci(int n) {
	// Sequencia de fibonacci n = (n - 1) + (n - 2)
	return (n < 2) ? n : (fibonacci(n - 1) + fibonacci(n - 2));
}

// ---------------------------------------------------------------

int main(void) {

	int num, i = 0;

	printf("Informe um numero: ");
	scanf("%d", &num);
	// Mostra num numeros da serie de fibonacci
	for(i = 0; i < num; i++)
		printf("%d\t", fibonacci(i + 1));

	printf("\n");
	return 0;
}
