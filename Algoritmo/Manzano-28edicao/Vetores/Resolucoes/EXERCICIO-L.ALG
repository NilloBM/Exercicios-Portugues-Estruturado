algoritmo "EXERCICIO-L"
var
   A: Vetor[1..10] de inteiro
   B: Vetor[1..10] de real
   X: inteiro
inicio
   //ENTRADA DE DADOS DO VETOR 'A'
   EscrevaL("VETOR A:")
   Para X := 1 ate 10 faca
        Leia(A[X])
   FimPara
   //ENTRADA DE DADOS DO VETOR 'B'
   Para X := 1 ate 10 faca
        B[X] := A[X]/2
   FimPara
   //SAÍDA DE DADOS DO VETOR 'B'
   EscrevaL("VETOR B:")
   Para X := 1 ate 10 faca
        Escreva(B[X])
   FimPara
fimalgoritmo