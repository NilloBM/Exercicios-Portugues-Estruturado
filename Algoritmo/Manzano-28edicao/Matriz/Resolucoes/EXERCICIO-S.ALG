algoritmo "EXERCICIO-S"
var
   A: Vetor[1..5,1..6] de inteiro
   B: Vetor[1..5,1..6] de inteiro
   C: Vetor[1..5,1..6] de inteiro
   X,Y,ENTRADA: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A', 'B' & 'C'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 6 faca
         Repita
            Leia(ENTRADA)
         Ate ENTRADA%2=0
         A[X,Y] := ENTRADA
         Repita
            Leia(ENTRADA)
         Ate ENTRADA%2=1
         B[X,Y] := ENTRADA
         C[X,Y] := A[X,Y] + B[X,Y]
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'C'
   EscrevaL("VETOR C")
   Para X := 1 ate 5 faca
      Para Y := 1 ate 6 faca
         Escreva(C[X,Y]:5)
      FimPara
      EscrevaL()
   FimPara
fimalgoritmo