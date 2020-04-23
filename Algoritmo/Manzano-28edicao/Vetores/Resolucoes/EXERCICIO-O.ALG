algoritmo "EXERCICIO-O"
var
   A: vetor[1..25] de real
   B: vetor[1..25] de real
   X: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      Escreva("Valores em Celcius: ")
      Para X := 1 ate 25 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      Para X := 1 ate 20 faca
           B[X] := A[X]*(9/5) + 32
      FimPara
      //SAÍDA DE DADOS DO VETOR 'A' E 'B'
      Escreva("Celcius: ")
      Para X := 1 ate 20 faca
           Escreva(A[X])
      FimPara
      EscrevaL()
      Escreva("Fahrenheit: ")
      Para X := 1 ate 20 faca
           Escreva(B[X])
      FimPara
fimalgoritmo