algoritmo "EXERCICIO-K"
var
   A: Vetor[1..10] de inteiro
   B: Vetor[1..10] de inteiro
   C: Vetor[1..10] de real
   X,Y: inteiro
   AUX: real
inicio
      //ENTRADA DE DADOS: VETOR 'A' E 'B'
      EscrevaL("VETOR 'A' E 'B':")
      Para X := 1 ate 10 faca
           Leia(A[X],B[X])
      FimPara
      //ENTRADA DE DADOS: VETOR 'C'
      Para X := 1 ate 10 faca
           C[X] := (A[X]^2) + (B[X]^2)
      FimPara
      //ORDENAÇÃO DECRESCENTE: VETOR 'C'
      Para X := 1 ate 9 faca
           Para Y := X+1 ate 10 faca
                Se C[X] < C[Y] entao
                   AUX := C[X]
                   C[X] := C[Y]
                   C[Y] := AUX
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: VETOR 'C'
      EscrevaL("VETOR C:")
      Para X := 1 ate 10 faca
           Escreva(C[X])
      FimPara
fimalgoritmo