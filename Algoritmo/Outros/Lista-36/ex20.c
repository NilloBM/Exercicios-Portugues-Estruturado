#include <stdio.h>
#include <stdlib.h>

void matrixt() {
	int i = 0, j = 0;
	int matrix[5][5], mt[5][5];

	system("clear"); // Para limpar a tela no Linux
	system("cls");	 // Para limpar a tela no windows
	printf("\n\tPreencha uma matriz 5 x 5");

	// Lê a matriz original
	for(i = 0; i < 5; i++) {
		for(j = 0; j < 5; j++) {
			printf("\n\tPosicao: (%d,%d)", i, j);
			scanf("%d", &matrix[i][j]);
		}
	}
	// Transpõe a matriz original, criando a matriz transposta, apenas invertendo as linhas pelas colunas
	for(i = 0; i < 5; i++) {
                for(j = 0; j < 5; j++) {
                        mt[i][j] = matrix[j][i];
                }
        }
	// Imprime a original
	printf("\n\tMatriz original: \n");

	for(i = 0; i < 5; i++) {
                for(j = 0; j < 5; j++) {
                        printf("[%d]", matrix[i][j]);
                }
                printf("\n");
        }
	// Imprime a transposta
	printf("\n\tMatriz transposta: \n");

	for(i = 0; i < 5; i++) {
                for(j = 0; j < 5; j++) {
                        printf("[%d]", mt[i][j]);
                }
		printf("\n");
        }
}

// ---------------------------------------------------------

int main(void) {

	matrixt();

	return 0;
}
