#include <stdio.h>
#include <stdlib.h>

// Retorna um poteiro int (que é um endereço de memória para um vetor de inteiros)
int * time(int n) {
	int hours = n / 3600;
	int minuts = (n % 3600) / 60;
	int seconds = ((n / 3600) % 60);

	int * time = (int*)malloc(3 * sizeof(int)); // Aloca espaço na memória para um vetor int de 3 posições e atribui à 'int * time'
	time[0] = hours; time[1] = minuts; time[2] = seconds;
	// Retorna o ponteiro time
	return time;
}

// ---------------------------------------------------------

void tempdiff() {
	int a, b, c, ta, tb;
	int vetA[3], vetB[3];

	printf("Digite a hora de inicio: ");
        scanf(" %d%d%d", &a, &b ,&c);
	vetA[0] = a; vetA[1] = b; vetA[2] = c;

	printf("Digite a hora de termino: ");
        scanf(" %d%d%d", &a, &b ,&c);
	vetB[0] = a; vetB[1] = b; vetB[2] = c;

	// Guarda os tempos ta e tb em segundos
	ta = vetA[0] * 3600 + vetA[1] * 60 + vetA[2];
	tb = vetB[0] * 3600 + vetB[1] * 60 + vetB[2];
	/* Aproveita que já existe uma função que recebe segundos e mostra a hora
	 então passa tb - ta para se calcular a hora passada entre ta e tb*/
	int * vet = time(tb - ta);
	// Recebe o ponteiro contendo [horas], [minutos] e [segundos]
	// Mostra para o usuário o resultado
	printf("Tempo de duracao: %d:%d:%d hs\n", vet[0], vet[1], vet[2]);
}

// ---------------------------------------------------------

int main(void) {

	tempdiff();

	return 0;
}
