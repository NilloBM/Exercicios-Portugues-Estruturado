#include <stdio.h>
#include <stdlib.h>

long fatorial(long n) {
	return ((n == 1) ? n : fatorial(n - 1) * n);
}

double formulaEx25(double n, double p) {
	double fatn = fatorial(n);
	double fatp = fatorial(p);

	return ( fatn / ( fatp * fatorial((n - p)) ) );
}

// --------------------------------------------------

/*
	NAO DIGITAR VALORES MUITO GRANDES E O n TEM
	QUE SER MAIOR QUE O p SE NAO DA PAU!
	AS FUNCAO formulaEx25 devolve numeros muito grandes
	Se voce digitar numeros muito grandes vai dar erro de segmentacao
*/

int main(void) {

	double n = 0.0, p = 0.0;

	printf("Digite n: ");
	scanf("%lf", &n);

	printf("Digite p: ");
	scanf("%lf", &p);

	printf("\n");

 	printf("\nResultado = %lf\n", formulaEx25(n, p));

	return 0;
}
