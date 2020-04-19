algoritmo "EXERCICIO-J"
var
   A: Vetor[1..20] de inteiro
   B: Vetor[1..20] de inteiro
   X: inteiro
   Y: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      EscrevaL("VETOR A")
      Para X := 1 ate 20 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      Para X := 1 ate 20 faca
           Para Y := 1 ate A[X] faca
                B[X] := B[X] + Y
           FimPara
      FimPara
      //SAÍDA DE DADOS DO VETOR 'B'
      EscrevaL("VETOR B")
      Para X := 1 ate 20 faca
           Escreva(B[X])
      FimPara
fimalgoritmo