#include <stdio.h>
#include <stdlib.h>

void tempo(int n) {
	int hours = n / 3600;
	int minuts = (n % 3600) / 60;
	int seconds = ((n / 3600) % 60);

	printf("%d-%d-%d", hours, minuts, seconds);
}

// ----------------------------------------------------------------------

int main(void) {
	int segundos;

	printf("Digite o tempo em segundos: ");
	scanf("%d", &segundos);

	tempo(segundos);

	printf("\n");

	return 0;
}
