#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void matrizSimetrica(int n) {

	bool simetrica = true;
	int matriz[n][n];

	int i = 0, j = 0;

	for(i = 0; i < n; i++) {
		for(j = 0; j < n; j++) {
			printf("posicao [%d][%d] = ", i, j);
			scanf(" %d", &matriz[i][j]);
		}
	}

	for(i = 0; i < n; i++) {
                for(j = i; j < n; j++) { // Aqui nessa linha é que está o 'pulo do gato' j = i. Isso faz os fors percorrerem só um lado da diagonal principal
					   // E o if faz a comparação dos dois lados da diagonal...
                        if(matriz[i][j] != matriz[j][i]) {
				// printf("*");
				simetrica = false; //Se for diferente marco como simetrica = false (não é simetrica)
				break; // Quebro os laços pois não preciso verificar as outras posições, se uma der falso então não há matriz simétrica
			}
		}
		// printf("\n");
	}

	printf((simetrica) ? "Eh simetrica\n" : "Nao eh simetrica\n");
}

// -----------------------------------------------------------------

int main(void) {

	int num;

	printf("Ler uma matriz quadrada de ordem N = ");
	scanf(" %d", &num);

	matrizSimetrica(num);

	return 0;
}
