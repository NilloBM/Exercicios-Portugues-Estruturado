algoritmo "EXERCICIO-G"
var
   A: vetor[1..20] de caractere
   B: vetor[1..30] de caractere
   C: vetor[1..50] de caractere
   X: inteiro
   Z: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      EscrevaL("VENTOR A")
      Para X := 1 ate 20 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      EscrevaL("VENTOR B")
      Para X := 1 ate 30 faca
           Leia(B[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'C'
      Para X := 1 ate 20 faca
           C[X] := A[X]
      FimPara
      Para Z := 1 ate 30 faca
           C[X+Z] := B[Z]
      FimPara
      //SAÍDA DE DADOS DO VETOR 'C'
      EscrevaL("VENTOR C")
      Para X := 1 ate 50 faca
           Escreva(C[X])
      FimPara
fimalgoritmo