#include <stdio.h>
#include <stdlib.h>

void tabuada(int n) {
	int i = 1;
	for (i = 0; i < 10; i++)
		printf("\t%d x %d = %d\n", n, i, (n * i));
}

// ---------------------------------------------------------

int main(void) {

	int num;

	printf("Digite um numero: ");
	scanf("%d", &num);

	tabuada(num);

	return 0;
}
