algoritmo "EXERCICIO-H"
var
   A: Vetor[1..20] de inteiro
   B: Vetor[1..20] de inteiro
   X,Y,AUX: inteiro
inicio
      //ENTRADA DE DADOS: MATRIZ 'A' E 'B'
      EscrevaL("VETOR A:")
      Para X := 1 ate 20 faca
           Leia(A[X])
           B[X] := A[X]*(-1)
      FimPara
      //ORDENAÇÃO: MATRIZ 'B'
      Para X := 1 ate 19 faca
           Para Y := X+1 ate 20 faca
                Se B[X] < B[Y] Entao
                   AUX := B[X]
                   B[X] := B[Y]
                   B[Y] := AUX
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: MATRIZ 'B'
      EscrevaL("VETOR B:")
      Para X := 1 ate 20 faca
           Escreva(B[X])
      FimPara
fimalgoritmo