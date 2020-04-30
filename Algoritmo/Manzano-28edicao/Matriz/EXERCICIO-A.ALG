algoritmo "EXERCICIO-A"
var
   A: Vetor[1..5,1..3] de inteiro
   B: Vetor[1..5,1..3] de inteiro
   C: Vetor[1..5,1..3] de inteiro
   X,Y: inteiro
inicio
      //ENTRADA DE DADOS: MATRIZ 'A','B' & 'C'
      Para X := 1 ate 5 faca
           Para Y := 1 ate 3 faca
                Leia(A[X,Y],B[X,Y])
                C[X,Y] := A[X,Y] + B[X,Y]
           FimPara
      FimPara
      //SAÍDA DE DADOS: MATRIZ 'C'
      Para X := 1 ate 5 faca
           Para Y := 1 ate 3 faca
                Escreva(C[X,Y])
           FimPara
      FimPara
fimalgoritmo