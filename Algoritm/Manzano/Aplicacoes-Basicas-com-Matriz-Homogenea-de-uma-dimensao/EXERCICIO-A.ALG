algoritmo "EXERCICIO-A"
var
   A: vetor[1..12] de inteiro
   X,Y,AUX: inteiro
inicio
      //ENTRADA DE DADOS: VETOR 'A'
      Escreval("VETOR A:")
      Para X := 1 ate 12 faca
           Leia(A[X])
      FimPara
      //ORDENAÇÃO DO VETOR 'A'
      Para X := 1 ate 11 faca
           Para Y := X + 1 ate 12 faca
                Se A[X] < A[Y] entao
                   AUX := A[X]
                   A[X] := A[Y]
                   A[Y] := AUX
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: VETOR 'A'
      EscrevaL("VETOR A EM ORDEM DECRESCENTE:")
      Para X := 1 ate 12 faca
           Escreva(A[X])
      FimPara
      
fimalgoritmo