#include <math.h>
#include <stdio.h>
#include <stdlib.h>

double area_esfera(double r) {
        return (4 / 3 * M_PI * pow(r, 3.0));
}

int main(void) {

	double raio;

	printf("Digite o raio da esfera: ");
	scanf("%lf", &raio);

	printf("O volume da esfera e aproximadamente: %.2lf\n", area_esfera(raio));

	return 0;
}
