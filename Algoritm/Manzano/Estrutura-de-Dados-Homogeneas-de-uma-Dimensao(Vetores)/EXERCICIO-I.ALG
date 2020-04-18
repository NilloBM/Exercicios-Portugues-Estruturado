algoritmo "EXERCICIO-I"
var
   A: vetor[1..5] de real
   B: vetor[1..5] de real
   C: vetor[1..5] de real
   D: vetor[1..15] de real
   X: inteiro
   Z: inteiro
   W: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      EscrevaL("VETOR A:")
      Para X := 1 ate 5 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      EscrevaL("VETOR B:")
      Para X := 1 ate 5 faca
           Leia(B[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'C'
      EscrevaL("VETOR C:")
      Para X := 1 ate 5 faca
           Leia(C[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'D'
      Para X := 1 ate 5 faca
           D[X] := A[X]
      FimPara
      Para Z := 1 ate 5 faca
           D[X+Z] := B[Z]
      FimPara
      Para W := 1 ate 5 faca
           D[X+Z+W] := C[W]
      FimPara
      //SAÍDA DE DADOS DO VETOR 'D'
      EscrevaL("VETOR D:")
      Para X := 1 ate 15 faca
           Escreva(D[X])
      FimPara

fimalgoritmo