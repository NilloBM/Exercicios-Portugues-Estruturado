algoritmo "EXERCICIO-P"
var
   A: vetor[1..12] de inteiro
   B: vetor[1..12] de inteiro
   X: inteiro
inicio
      //ENTRADA DE DADOS DA MATRIZ 'A'
      Escreva("VETOR A: ")
      Para X := 1 ate 12 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DA MATRIZ 'B'
      Para X := 1 ate 12 faca
           Se A[X]%2 = 1 entao
              A[X] := A[X]*2
           FimSe
           B[X] := A[X]
      FimPara
      //SAÍDA DE DADOS DA MATRIZ 'B'
      Escreva("VETOR B: ")
      Para X := 1 ate 12 faca
           Escreva(B[X])
      FimPara
fimalgoritmo