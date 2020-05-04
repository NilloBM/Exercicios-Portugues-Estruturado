algoritmo "EXERCICIO-F"
var
   A: Vetor[1..5,1..4] de inteiro
   B: Vetor[1..5,1..4] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' & 'B'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 4 faca
         Leia(A[X,Y])
         B[X,Y] := A[X,Y]
         F := B[X,Y] - 1
         Para F := F ate 1 passo -1 faca
            B[X,Y] := B[X,Y]*F
         FimPara
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'A' & 'B'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 4 faca
         Escreva(A[X,Y]:5)
      FimPara
      EscrevaL()
   FimPara
   EscrevaL()
   Para X := 1 ate 5 faca
      Para Y := 1 ate 4 faca
         Escreva(B[X,Y]:10)
      FimPara
      EscrevaL()
   FimPara
fimalgoritmo