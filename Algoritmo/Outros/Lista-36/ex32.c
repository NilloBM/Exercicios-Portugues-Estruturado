#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

int menu() {
	printf("**********************************************************************\n\n");

        printf("*\tCalculadora Simples. Opcoes possiveis: \n\n");

        printf("*\t1. Adicao\n\n");

        printf("*\t2. Subtracao\n\n");

        printf("*\t3. Multiplicacao\n\n");

        printf("*\t4. Divisao\n\n");

        printf("*\t5. Sair do programa\n\n");

        printf("*********************************************************************\n\n");

        printf("Entre com sua opcao: ");
	char ch = getchar();

	switch(ch) {
		case '1':
			return 1;
		case '2':
                        return 2;
		case '3':
                        return 3;
		case '4':
                        return 4;
		case '5':
                        return 5;
		default:
			return -1;
	}
}

// -------------------------------------

float soma(float a, float b) {
	return a + b;
}

// -------------------------------------

float divide(float a, float b) {
	return ((b != 0) ? (a / b) : 0);
}

// -------------------------------------

float multiplica(float a, float b) {
	return a * b;
}

// -------------------------------------

float subtrai(float a, float b) {
	return a - b;
}

// -------------------------------------

int main(void) {

	int op = 0;
	float n1, n2;
	char msgErro[] = "\n Opcao invalida. Entre com uma opcao valida.\n";

	do {
		// Limpa a tela
		// Para windows
		// system("cls");
		// Para Linux
		system("clear");

		op = menu();
		if(op == -1) {
			printf("%s", msgErro);
			continue;
		}

		if(op == 5) exit(0);

		printf("\nDigite dois numeros: ");
		scanf("%f%f", &n1, &n2);
		// Para windows descomente a linha abaixo
		// fflush(stdin); // Limpa o buffer de memoria (windows)
		// Comente a linha abaixo se vc usa windows
		__fpurge(stdin); // Limpa o buffer de memoria (linux)

		printf("\n%f\n", ((op == 1) ? soma(n1, n2) : (op == 2) ? subtrai(n1, n2) : (op == 3) ? multiplica(n1, n2) : (op == 4) ? divide(n1, n2) : 0));

		printf("\nPressione qualquer tecla para continuar...");
		getchar();
	} while(true);

	return 0;
}
