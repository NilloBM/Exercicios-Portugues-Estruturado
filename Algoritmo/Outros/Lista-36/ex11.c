#include <stdio.h>
#include <stdlib.h>

char conceito(float m) {
	// Maior ou igual a 9 é A, maior ou igual a 7 é B, maior ou igual a 5 é C, e por ultimo D
	return (m >= 9.0) ? 'A' : (m >= 7.0) ? 'B' : (m >= 5.0) ? 'C' : 'D';
}

// ---------------------------------------------------------

int main(void) {

	float num;

	printf("Digite a nota de media do aluno: ");
	scanf(" %f", &num);
	// Mostra o conceito A ou B ou C ou D
	printf("O conceito final e %c\n", conceito(num));

	return 0;
}
