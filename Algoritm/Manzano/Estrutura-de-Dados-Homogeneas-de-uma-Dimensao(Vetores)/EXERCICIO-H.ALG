algoritmo "EXERCICIO-H"
var
   A: Vetor[1..20] de real
   B: Vetor[1..20] de real
   X: inteiro
   C: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      EscrevaL("VETOR A")
      Para X := 1 ate 20 faca
           Leia(A[X])
      FimPara
      //ENTRADA DE DADOS DO VETOR 'B'
      EscrevaL("VETOR B")
      Para X := 20 ate 1 passo -1 faca
           C := C + 1
           B[C] := A[X]
      FimPara
      //SAÍDA DE DADOS DO VETOR 'B'
      Para X := 1 ate 20 faca
           Escreva(B[X])
      FimPara
fimalgoritmo