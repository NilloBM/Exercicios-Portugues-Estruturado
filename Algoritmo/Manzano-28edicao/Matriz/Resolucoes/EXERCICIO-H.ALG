algoritmo "EXERCICIO-H"
var
   A: Vetor[1..5,1..5] de inteiro
   B: Vetor[1..5,1..5] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A' & 'B'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 5 faca
         Leia(A[X,Y])
         Se X = Y entao
            B[X,Y] := A[X,Y]*3
         SeNao
            B[X,Y] := A[X,Y]*2
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'B'
   EscrevaL("VETOR B")
   Para X := 1 ate 5 faca
        Para Y := 1 ate 5 faca
             Escreva(B[X,Y]:5)
        FimPara
        EscrevaL()
   FimPara
fimalgoritmo