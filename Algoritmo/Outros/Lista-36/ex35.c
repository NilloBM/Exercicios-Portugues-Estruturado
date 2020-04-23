#include <stdio.h>
#include <stdlib.h>

#define TAM_X 5
#define TAM_Y 6

int matriz[TAM_X][TAM_Y];

// ------------------------------------------------------------------

int mediaAbaixoDaDiagonal() {
	int i = 0, j = 0;
	int soma = 0;

	for(j = 0; j < TAM_X; j++)
		for(i = j; i < TAM_Y; i++)
				soma += matriz[i][j];

	return soma;
}

// -------------------------------------------------------------------

int somaAcimaDaDiagonal() {
	int i = 0, j = 0;
	int soma = 0;

	for(i = 0; i < TAM_X; i++)
		for(j = i; j < TAM_Y; j++)
				soma += matriz[i][j];

	return soma;
}

// -------------------------------------------------------------------

int mediaDiagonal() {
	int i = 0, j = 0;
	int soma = 0;

	for(i = 0; i < TAM_X; i++)
		for(j = 0; j < TAM_Y; j++)
			if(i == j)
				soma += matriz[i][j];
	// retorna a soma dividida pelo total de elementos
	return soma / (TAM_X * TAM_Y);
}

// -------------------------------------------------------------------

int menor() {
	int i = 0, j = 0;
	int m = matriz[0][0];

	for(i = 0; i < TAM_X; i++)
		for(j = 0; j < TAM_Y; j++)
			if(matriz[i][j] < m)
				m = matriz[i][j];

	return m;
}

// -------------------------------------------------------------------

int somaMatriz() {
	int i = 0, j = 0;
	int soma = 0;

	for(i = 0; i < TAM_X; i++)
		for(j = 0; j < TAM_Y; j++)
			soma += matriz[i][j];

	return soma;
}

// -------------------------------------------------------------------

int main(void) {
	int i= 0, j = 0;

	printf("\nInforme os elementos da matriz: \n");

	for(i = 0; i < TAM_X; i++) {
			for(j = 0; j < TAM_Y; j++) {
				printf("m[%d][%d]", i, j);
				scanf(" %d", &matriz[i][j]);
			}
			printf("\n");
	}

	printf("\nMedia abaixo da diagonal principal: \n");
	printf("%d", mediaAbaixoDaDiagonal());

	printf("\nSoma acima da diagonal principal: \n");
	printf("%d", somaAcimaDaDiagonal());

	printf("\nMedia da diagonal principal: \n");
	printf("%d", mediaDiagonal());

	printf("\nMenor elemento da matriz: \n");
	printf("%d", menor());

	printf("\nSoma dos elementos da matriz: \n");
	printf("%d", somaMatriz());

	return 0;
}


