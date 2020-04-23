#include <stdio.h>
#include <stdlib.h>

int leNumero(int n1, int n2) {
	int num;

	printf("\nInforme um numero maior que %d e menor ou igual a %d: ", n1, n2);
	scanf("%d", &num);

	if(num <= n1 || num > n2) {
		printf("\nNúmero inválido. Digite novamente!\n");
		return -1;
	}

	return num;
}

// -------------------------------------------------------------------

void tabuada(int n) {
	int i;

	for(i = 1; i <= 10; i++) {
		printf("\n%d X %d = %d", n, i, (n * i));
	}
}

// -------------------------------------------------------------------

int main(void) {

	// Posso usar uma funcao dentro da outra sem problemas
	tabuada(leNumero(1, 10));
	printf("\n");

	return 0;
}
