algoritmo "EXERCICIO-I"
var
   A: Vetor[1..15] de inteiro
   B: Vetor[1..15] de inteiro
   X,Y,AUX: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A' DE 'B'
   EscrevaL("VETOR 'A' E 'B':")
   Para X := 1 ate 15 faca
      Leia(A[X])
      B[X]:= int(abs(A[X]/2))
   FimPara
   //ORDENAÇÃO: MATRIZ 'A' E 'B'
   Para X := 1 ate 14 faca
      Para Y := X+1 ate 15 faca
         Se A[X] < A[Y] Entao
            AUX := A[X]
            A[X] := A[Y]
            A[Y] := AUX
         FimSe
         Se B[X] > B[Y] Entao
            AUX := B[X]
            B[X] := B[Y]
            B[Y] := AUX
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'A' E 'B'
   EscrevaL("VETOR A:")
   Para X := 1 ate 15 faca
      Escreva(A[X])
   FimPara
   EscrevaL()
   EscrevaL("VETOR B:")
   Para X := 1 ate 15 faca
      Escreva(B[X])
   FimPara
fimalgoritmo