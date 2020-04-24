algoritmo "EXERCICIO-D"
var
   A: Vetor[1..12] de real
   B: Vetor[1..12] de real
   C: Vetor[1..12] de real
   X,Y: inteiro
   AUX: real
inicio
      //ENTRADA DE DADOS: DO VETOR 'A' e 'B'
      EscrevaL("VETOR A e B:")
      Para X := 1 ate 12 faca
           Leia(A[X],B[X])
      FimPara
      //ORDENAÇÃO CRESCENTE - INSERT-SORT: VETOR 'A' e 'B'
      Para X := 1 ate 11 faca
           Para Y := X + 1 ate 12 faca
                Se A[X] > A[Y] entao
                   AUX := A[X]
                   A[X] := A[Y]
                   A[Y] := AUX
                FimSe
                Se B[X] > B[Y] entao
                   AUX := B[X]
                   B[X] := B[Y]
                   B[Y] := AUX
                FimSe
           FimPara
      FimPara
      //ENTRADA DE DADOS: VETOR 'C'
      Para X := 1 ate 12 faca
           C[X] := A[X] + B[X]
      FimPara
      //ORDENAÇÃO DECRESCENTE - INSERT-SORT: VETOR 'C'
      Para X := 1 ate 11 faca
           Para Y := X + 1 ate 12 faca
                Se C[X] < C[Y] entao
                   AUX := C[X]
                   C[X] := C[Y]
                   C[Y] := AUX
                FimSe
           Fimpara
      FimPara
      //SAÍDA DE DADOS: VETOR 'C'
      EscrevaL("VETOR C:")
      Para X := 1 ate 12 faca
           Escreva(C[X])
      FimPara
fimalgoritmo