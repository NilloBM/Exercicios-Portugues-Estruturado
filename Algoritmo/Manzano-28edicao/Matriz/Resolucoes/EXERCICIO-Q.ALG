algoritmo "EXERCICIO-Q"
var
   A: Vetor[1..4,1..5] de inteiro
   B: Vetor[1..4] de inteiro
   C: Vetor[1..5] de inteiro
   X,Y,SM_B,SM_C: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A'
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         Leia(A[X,Y])
         //ENTRADA DE DADOS: VETOR 'B'
         B[X] := B[X] + A[X,Y]
      FimPara
      SM_B := SM_B + B[X]
   FimPara
   //ENTRADA DE DADOS: VETOR 'C'
   Para Y := 1 ate 5 faca
      Para X := 1 ate 4 faca
         C[Y] := C[Y] + A[X,Y]
      FimPara
      SM_C := SM_C + C[X]
   FimPara
   EscrevaL("SOMATÓRIO DA MATRIZ 'B':",SM_B)
   EscrevaL("SOMATÓRIO DA MATRIZ 'C':",SM_C)
fimalgoritmo