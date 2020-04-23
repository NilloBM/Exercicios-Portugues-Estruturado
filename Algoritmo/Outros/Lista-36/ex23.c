#include <stdio.h>
#include <stdlib.h>

static int N = 0, M = 0;

void nxmatriz(int matriz[N][M], int x, int y, int n) {
	int i = 0, j = 0;

	for(i = 0; i < x; i++) {
		for(j = 0; j < y; j++) {
			printf("M[%d][%d] = [ %d ]", i, j, matriz[i][j] * n);
		}
		printf("\n");
	}
}
// -------------------------------------------------------------------
int main(void) {

	int num;

	printf("Digite um numero: ");
	scanf(" %d", &num);

	printf("Digite as dimensões de uma matriz: ");
	scanf(" %d%d", &N, &M);
	int matriz[N][M];

	printf("Digite os elementos de uma matriz %d X %d", N, M);
	int i = 0, j = 0;
	for(i = 0; i < N; i++) {
		for(j = 0; j < M; j++) {
			printf("\nPosicao: [%d,%d] = ", i, j);
			scanf(" %d", &matriz[i][j]);
			// printf("\n -[ %d  ]-\n", matriz[i][j]);
		}
	}

	printf("\nA matriz lida multiplicada por %d eh: \n", num);
	nxmatriz(matriz, N, M, num);

	return 0;
}
