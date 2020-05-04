algoritmo "EXERCICIO-N"
var
   A: Vetor[1..7,1..7] de inteiro
   X,Y,S: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A'
   Para X := 1 ate 7 faca
      Para Y := 1 ate 7 faca
         Leia(A[X,Y])
         Se A[X,Y]%2 = 0 entao
            S := S + A[X,Y]
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: TOTAL DE ELEMENTOS PARES DA MATRIZ 'A'
   Escreva("TOTAL DE ELEMENTOS PARES DA MATRIZ 'A':",S)
fimalgoritmo