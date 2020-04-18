algoritmo "EXERCÍCIO B"
var
   A: vetor[1..8] de inteiro
   B: vetor[1..8] de inteiro
   C: inteiro
inicio

   // ENTRADA DE DAODS MATRIZ A
   Para C := 1 ate 8 faca
      Leia(A[C])
   FimPara

   //ENTRADA DE DADOS MATRIZ B
   Para C:= 1 ate 8 faca
      B[C] := A[C]*3
   FimPara

   //SAÍDA DE DADOS MATRIZ B
   Para C:= 1 ate 8 faca
      EscrevaL(B[C])
   FimPara

fimalgoritmo