#include <stdio.h>
#include <stdlib.h>

// Usando unsigned porque a idade não pode ser negativa
// Usando short por que a didade é um número inteiro mas nunca sera um número muito grande
char * categoria (unsigned short age) {
	// Usando operadores ternarios aninhados
	return (age >= 18) ? "Adulto" : (age >= 14)  ?  "Juvenil B" : (age >= 11) ? "Juvenil A" : (age >= 8) ? "Infantil B" : (age >= 5) ? "Infantil A" : "Idade nao permitida";
}

// --------------------------------------------------------------------------------------------------

int main(void) {

	int idade;

	printf("Digite a idade do nadador: ");
	scanf("%d", &idade);

	printf("A classificacao do nadador eh: %s\n", categoria(idade));

	return 0;
}
