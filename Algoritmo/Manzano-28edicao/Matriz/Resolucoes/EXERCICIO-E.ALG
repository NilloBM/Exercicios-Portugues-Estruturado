algoritmo "EXERCICIO-E"
var
   A: Vetor[1..12] de real
   B: Vetor[1..12] de real
   C: Vetor[1..12,1..2] de real
   X,Y: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' & 'B'
   Para X := 1 ate 12 faca
      Leia(A[X],B[X])
   FimPara
   //ENTRADA DE DADOS: VETOR 'C'
   Para X := 1 ate 12 faca
      Para Y := 1 ate 2 faca
         //1a COLUNA
         C[X,1] := A[X]*2
         //2a COLUNA
         C[X,2] := B[X]/5
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'A','B' & 'C'
   EscrevaL("VETOR A")
   Para X := 1 ate 12 faca
      Escreva(A[X])
   FimPara
   EscrevaL()
   EscrevaL("VETOR B")
   Para X := 1 ate 12 faca
      Escreva(B[X])
   FimPara
   EscrevaL()
   EscrevaL("VETOR C")
   Para X := 1 ate 12 faca
      Para Y := 1 ate 2 faca
         Escreva(C[X,Y]:5:1)
      FimPara
      EscrevaL()
   FimPara
fimalgoritmo