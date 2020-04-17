#include <stdio.h>
#include <regex.h>
#include <stdlib.h>
#include <stdbool.h>

bool valida(char strdata[]) {
	regex_t er; 		// Variável para a expressão regular
	bool result = false;	// Variável que será true quando a data for válida

	// Prepara uma expressão regular para validar a data
	regcomp(&er, "(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[012])/([12][0-9]{3})", REG_EXTENDED|REG_NOSUB);

	// Se a data 'bater' com a expressão  é por que é válida
	// Então muda para true o valor de result que antes era false
	if((regexec(&er, strdata, 0, NULL, 0)) == 0)
		result = !result; // Muda para true

	return result; // Retorna o resultado
}

// ----------------------------------------------------------------------------------------------------

int main(void) {
	char data[10];

	printf("Entre com uma data no formato dd/mm/yyyy: ");
	scanf("%s", data);
	// Se a função valida(data) retornar true, quer dizer que é valida
	// do contrário ela é inválida
	printf((valida(data)) ? ("\nA data e valida!\n") : ("\nA data e invalida.\n"));

	return 0;
}
