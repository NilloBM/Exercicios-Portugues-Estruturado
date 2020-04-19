algoritmo "EXERCICIO-K"
var
   A: Vetor[1..10] de inteiro
   B: Vetor[1..10] de inteiro
   X: inteiro
inicio
      //ENTRADA DE DADOS DE VETOR 'A'
      EscrevaL("VETOR A")
      Para X := 1 ate 10 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DE VETOR 'B'
      Para X := 1 ate 10 faca
           B[X] := A[X] - A[X]*2
      FimPara
      //SAIDA DE DADOS DE VETOR 'B'
      EscrevaL("VETOR B")
      Para X := 1 ate 10 faca
           Escreva(B[X])
      FimPara
fimalgoritmo