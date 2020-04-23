#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

#define max 10 // Valor constante para max

// Variaveis globais
int vetA[max], vetB[max], vetC[max * 2];

// Prototipos de funcoes
bool repetido(int, int);
void mescla(void);
int compara(const void*, const void*);

// -------------------------------------------------------------------

int main(void) {

	int i = 0;

	// Ler vetores A e B
	printf("Vetor A: \n");
        for(i = 0; i < max; i++) {
                printf("vetA[%d] = ", i);
                scanf("%d", &vetA[i]);
        }

	printf("Vetor B: \n");
        for(i = 0; i < max; i++) {
                printf("vetB[%d] = ", i);
                scanf("%d", &vetB[i]);
        }
	// Ordena cada vetor em ordem crescente
	qsort(vetA, max, sizeof(int), compara);
	qsort(vetB, max, sizeof(int), compara);

	// Chama a funcao que mescla os dois vetores sem elementos repetidos
	mescla();

	return 0;

} // Fim do main

//---------------------------------------------------------------------

// Verifica se o novo elemento ja existe no vetor C
bool repetido(int n, int limite) {
        int i = 0;
        for(i = 0; i < limite * 2; i++)
                if(vetC[i] == n) return true;

	return false;
}

// -------------------------------------------------------

// Faz a uniao de A com B sem repetidos
void mescla() {
        int i = 0, j = 0, lidos = 0;
	// A variável lidos ajuda na hora de ordenar o vetor C
	// pois ele vai estar menor que 20 se houverem repetidos em A e B
	// Entao a funcao qsortt vai ordenar so a quantidade de lidos para nao
	// considerar os ZEROS restantes que completam o vetor C

        for(i = 0; i < max; i++) {

                if(! (repetido(vetA[i], lidos))) {
                        vetC[j++] = vetA[i];
                        lidos++;
                }
        }

        for(i = 0; i < max; i++) {
                if(! (repetido(vetB[i], lidos))) {
                        vetC[j++] = vetB[i];
                        lidos++;
                }
        }
	// Ordena em ordem crescente o vetor C, só até o lidos
        qsort(vetC, lidos, sizeof(int), compara); // EsPERIMENTE COMENTAR ESSA LINHA, RODE O PROGRAMA E VEJA A DIFERENCA

	// Exibe na tela o resultado
        for(i = 0; i < lidos; i++) {
                printf("\nvetC[%d]\n", vetC[i]);
        }
}

// -------------------------------------------------------

// Funcao que implementa uma comparacao, ela eh necessaria para a qsort saber qual criterio usar para comparar
// Tente inverter os sinais < e > nos dois ifs para > e < e veja o que acontece ao rodar o programa
int compara(const void* a, const void* b)
{
    int arg1 = *(const int*)a;
    int arg2 = *(const int*)b;

    if (arg1 < arg2) return -1;
    if (arg1 > arg2) return 1;
    return 0;
}
