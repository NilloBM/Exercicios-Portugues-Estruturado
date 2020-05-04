algoritmo "EXERCICIO-G"
var
   A: Vetor[1..4,1..5] de real
   B: Vetor[1..4,1..5] de real
   X,Y: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' & 'B'
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         Leia(A[X,Y])
         B[X,Y] := A[X,Y]*1.8 + 32
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'A' & 'B'
   EscrevaL("MATRIZ A: CELCIUS")
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         Escreva(A[X,Y]:5)
      FimPara
      EscrevaL()
   FimPara
   EscrevaL("MATRIZ B: FAHRENHEIT")
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         Escreva(B[X,Y]:5)
      FimPara
      EscrevaL()
   FimPara
fimalgoritmo