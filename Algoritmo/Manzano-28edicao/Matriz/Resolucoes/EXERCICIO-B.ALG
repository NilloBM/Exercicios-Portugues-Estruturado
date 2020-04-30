algoritmo "EXERCICIO-B"
var
   A: Vetor[1..7] de inteiro
   B: Vetor[1..7] de inteiro
   C: Vetor[1..7,1..2] de inteiro
   X,Y: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' & 'B'; MATRIZ 'C'
   Para X := 1 ate 7 faca
      Leia(A[X],B[X])
   FimPara
   Para X := 1 ate 7 faca
      Para Y := 1 ate 2 faca
         C[X,1] := A[X]
         C[X,2] := B[X]
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'C'
   Para X := 1 ate 7 faca
      Para Y := 1 ate 2 faca
         Escreva(C[X,Y])
      FimPara
   FimPara
fimalgoritmo