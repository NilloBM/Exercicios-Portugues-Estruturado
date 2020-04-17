algoritmo "EXERCICIO-C"
var
   A: vetor[1..20] de real
   B: vetor[1..20] de real
   C: vetor[1..20] de real
   X: inteiro
inicio

      //ENTRADA DE DADOS DOS VETORES A E B
      Para X := 1 ate 20 faca
           Leia(A[X])
           Leia(B[X])
      Fimpara
      
      //ENTRADA DE DADOS DO VETOR C
      Para X := 1 ate 20 faca
           C[X] := A[X] - B[X]
      FimPara
      
      //SAÍDA DE DADOS DO VETOR C
      EscrevaL("MATRIZ C:")
      Para X := 1 ate 20 faca
           Escreva(int(C[X]))
      FimPara

fimalgoritmo