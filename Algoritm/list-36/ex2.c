#include <math.h>
#include <stdio.h>
#include <ctype.h>
#include <stdlib.h>

float media(float n1, float n2, float n3, char avgtp) {
	float result = 0.0;

	char op = avgtp;

	switch (tolower(op)) {
		case 'a':
			result = (n1 + n2 + n3) / 3;
			break;
		case 'p':
			result = (n1 * 5 + n2 * 3 + n3 * 2) / (5 + 3 + 2);
                        break;
		case 'h':
			result = (1/n1 + 1/n2 + 1/n3) / 3;
                        break;
		default:
			printf("Erro");
			break;
	}
	return result;
}
// -------------------------------------------------------------------------------
int main(void) {
	double n1, n2, n3;
	char tpmedia;

	printf("Digite as 3 notas do aluno: \n");
	scanf(" %lf%lf%lf", &n1, &n2, &n3);

	printf("Escolha o tipo de media - (A)ritmetica (P)onderada (H)armonica\n");
	scanf(" %c", &tpmedia);

	printf("Média: %.2lf\n", media(n1, n2, n3, tpmedia));

	return 0;
}
