#include <stdio.h>
#include <stdlib.h>

int idadedias(int dias, int meses, int anos) {
        return (dias + (meses * 30) + (anos * 365));
}

// -------------------------------------------------------

int main(void) {

	int dias, meses, anos;

	printf("Digite a idade em dias meses e anos separados por espaços: ");
	scanf("%d%d%d", &dias, &meses, &anos);

	printf("Idade em dias: %d\n", idadedias(dias, meses, anos));

	return 0;
}
