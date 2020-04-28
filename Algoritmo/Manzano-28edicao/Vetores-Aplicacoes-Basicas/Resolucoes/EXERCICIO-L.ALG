algoritmo "EXERCICIO-L"
var
   A: Vetor[1..15] de real
   B: Vetor[1..15] de real
   C: Vetor[1..15] de real
   D: Vetor[1..15] de real
   X,Y: inteiro
   AUX: real
   
inicio
      //ENTRADA DE DADOS: VETOR 'A','B','C' & 'D'
      EscrevaL("VETOR A,B,C:")
      Para X := 1 ate 15 faca
           Leia(A[X],B[X],C[X])
           D[X] := (A[X]+B[X]+C[X])^3
      FimPara
      //ORDENAÇÃO: VETOR 'C'
      Para X := 1 ate 14 faca
           Para Y := X+1 ate 15 faca
                Se D[X] > D[Y] entao
                   AUX := D[X]
                   D[X] := D[Y]
                   D[Y] := AUX
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: VETOR 'C'
      EscrevaL("VETOR D:")
      Para X := 1 ate 15 faca
           Escreva(D[X])
      FimPara
fimalgoritmo