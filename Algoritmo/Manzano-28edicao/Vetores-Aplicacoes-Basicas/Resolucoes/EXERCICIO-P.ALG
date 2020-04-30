algoritmo "EXERCICIO-P"
var
   A: Vetor[1..10] de caractere
   B: Vetor[1..10] de caractere
   X,Y: inteiro
   AUX: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A' E 'B'
   EscrevaL("VETOR A:")
   Para X := 1 ate 10 faca
      Leia(A[X])
   FimPara
   Para X := 10 ate 1 passo -1 faca
      Y := Y + 1
      Se A[X] >= 1 entao
         B[Y] := A[X]
      FimSe
   FimPara
   //ORDENAÇÃO CRESCENTE(ASCENDENTE): MATRIZ 'B'
   Para X := 1 ate 9 faca
      Para Y := X+1 ate 10 faca
         Se B[X] > B[Y] Entao
            AUX := B[X]
            B[X] := B[Y]
            B[Y] := AUX
         FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'B'
   EscrevaL("VETOR B:")
   Para X := 1 ate 10 faca
      Escreva(B[X])
   FimPara
fimalgoritmo