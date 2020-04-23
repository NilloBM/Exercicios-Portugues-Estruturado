algoritmo "EXERCICIO-C"
var
   A: Vetor[1..15] de inteiro
   B: Vetor[1..15] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' e 'B'
   EscrevaL("VETOR A:")
   Para X := 1 ate 15 faca
      Leia(A[X])
   Fimpara
   Para X := 1 ate 15 faca
      Se A[X] = 0 Entao
         B[X] := 1
      Senao
         F := A[X] - 1
         Para F := F ate 1 passo -1 faca
            A[X] := A[X]*F
         FimPara
         B[X] := A[X]
      FimSe
   FimPara
   //ORDENAÇÃO INSERT-SORT: VETOR 'B'
   Para X := 1 ate 14 faca
      Para Y := X + 1 ate 15 faca
         Se B[X] > B[Y] entao
            F := B[X]
            B[X] := B[Y]
            B[Y] := F
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'B'
   EscrevaL("VETOR B:")
   Para X := 1 ate 15 faca
      Escreva(B[X])
   Fimpara
fimalgoritmo