#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool ispositive(int n) {
	return (n >= 0) ? true : false;
}

// ---------------------------------------------------------

int main(void) {

	int num;

	printf("Digite um numero: ");
	scanf(" %d", &num);

	printf("O numero informado e %s\n", (ispositive(num) ? ("positivo") : ("negativo")));

	return 0;
}
