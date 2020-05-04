algoritmo "EXERCICIO-I"
var
   A: Vetor[1..7,1..7] de inteiro
   B: Vetor[1..7,1..7] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A' & 'B'
   EscrevaL("MATRIZ A")
   Para X := 1 ate 7 faca
      Para Y := 1 ate 7 faca
         Leia(A[X,Y])
         Se (X = Y) e (X%2=1) entao
            B[X,Y] := A[X,Y]
            F := B[X,Y] - 1
            Para F := F ate 1 passo -1 faca
               B[X,Y] := B[X,Y]*F
            FimPara
         Senao
            Para F := 1 ate A[X,Y] faca
               B[X,Y] := B[X,Y] + F
            FimPara
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'B'
   EscrevaL("MATRIZ B")
   Para X := 1 ate 7 faca
        Para Y := 1 ate 7 faca
             Escreva(B[X,Y]:7)
        FimPara
        EscrevaL()
   FimPara
fimalgoritmo