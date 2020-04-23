algoritmo "EXERCICIO-Q"
var
   A: vetor[1..15] de real
   B: vetor[1..15] de real
   X: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      Escreva("VETOR A: ")
      Para X := 1 ate 15 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      Para X := 1 ate 15 faca
           Se A[X]%2 = 0 entao
              A[X] := A[X]/2
           SeNao
              A[X] := A[X]*1.5
           FimSe
           B[X] := A[X]
      FimPara
      //SAÍDA DE DADOS DO VETOR 'B'
      Escreva("VETOR B: ")
      Para X := 1 ate 15 faca
           Escreva(B[X])
      FimPara
fimalgoritmo