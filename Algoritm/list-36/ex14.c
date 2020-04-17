#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>

void mediapop() {
	char op = 's';
	float salary = 0.0, sumsal = 0;
	int childs = 0, sumc = 0, c = 0;

	do {
		c++;
		printf("Salario: ");
		scanf("%f", &salary);
		printf("Numero de Filhos: ");
		scanf("%d", &childs);

		sumsal += salary;
		sumc += childs;

		printf("Ler mais um?");
		scanf(" %c", &op);
	} while(tolower(op) == 's');

	printf("Media de Salario: %.2f, Media de Filhos %d\n", sumsal/c, sumc/c);
}

// ---------------------------------------------------------

int main(void) {

	mediapop();

	return 0;
}
