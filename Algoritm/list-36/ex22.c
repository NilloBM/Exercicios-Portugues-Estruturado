#include <stdio.h>
#include <stdlib.h>

void primos() {
	int inicio = 5000, fim = 7000;
	int i = 0, j = 0, encontrados = 0;

	for(i = inicio; i <= fim; i++) {
		int count = 0;
		for(j = 1; j <= i; j++) {
			/* Para ser primo um numero so pode ser divisivelo por 1 e por ele próprio,
                           ou seja só dois divisores, então se cont for maior que 2 o numero NAO eh primo. */
			if(i % j == 0) {
				/* Incremento o cont e depois verifico se ele eh maior que dois, se for o break quebra o laço
				   e o volta para o primeiro for. */
				if(++count > 2) break;
			}
			/* if para pegar a quantidade de numeros encontrados, os numeros primos encontrados
			   e para fazer a quebra de linhas, para imprimir 10 numeros por linha. */
			if(i == j) {
				encontrados++;
				printf("%d\t", i);
				if(encontrados % 10 == 0) printf("\n");
			}
		}
	}

	printf("\n\nForam encontrados %d numeros primos entre %d e %d!\n", encontrados, inicio, fim);
}

// ------------------------------------------------------

int main() {
	primos();

	return 0;
}
