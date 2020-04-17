#include <stdio.h>
#include <stdlib.h>

void maiormenor() {
	int i = 0, atual = 0, menor = 0, maior = 0;

	printf("Digite 10 numeros: \n");

	scanf("%d", &atual);

	menor = maior = atual; // O atual foi lido pela primeira vez, portanto o menor e o maior serão iguais
	// Agora o scanf dentro do for vai ler os próximos 9 números
	// então o menor e o maior serão encontrados.
	for (i = 0; i < 9; i++) {
		scanf("%d", &atual);

		if(atual < menor) menor = atual;

		if(atual > maior) maior = atual;
	}

	printf("Maior = %d, Menor = %d\n", maior, menor);
}

// ---------------------------------------------------------

int main(void) {

	maiormenor();

	return 0;
}
