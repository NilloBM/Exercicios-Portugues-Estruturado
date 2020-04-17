#include <stdio.h>
#include <stdlib.h>

// Para formar um triangulo, cada aresta (lado) deve ser menor que a soma dos outros dois

// A função retorna 0 para Erro, 1 para equilátero, 2 para escaleno e 3 para isósceles
int triangulo(float x, float y, float z) {
	// Primeiro verifico se pode-se formar um triangulo com essas coordenadas
	// Se nao for possivel ele retorna avisando que nao é triangulo!
	if (!(x < (y + z) && y < (x + z) && z < (x + y))) return 0;
	// É Equilátero ?
	if (x == y && y == z) return 1;
	// É Escaleno ?
	if (x != y && x != z && z != y) return 2;
	// Então é Isósceles
	return 3;
}

// ---------------------------------------------------------

int main(void) {

	float n1, n2, n3;

	printf("Digite os tres lados de um triangulo: ");
	scanf(" %f%f%f", &n1, &n2, &n3);

	int result = triangulo(n1, n2, n3);
	char * str; // Cria um ponteiro de chars.

	switch(result) {
		case 0:
			str = "nao formam um triangulo.";
			break;

		case 1:
			str = "forma um triangulo equilatero";
                        break;

		case 2:
			str = "nao formam um escaleno.";
                        break;

		case 3:
			str = "nao formam um isosceles.";
                        break;
	}

	printf("Os lados passados %s\n", str);

	return 0;
}
