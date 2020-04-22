algoritmo "EXERCICIO-W"
var
   A: Vetor[1..10] de inteiro
   B: Vetor[1..10] de inteiro
   C: Vetor[1..10] de real
   X: inteiro
inicio
   //ENTRADA DE DADOS DOS VESTORES 'A' E 'B'
   EscrevaL("VETOR A e B:")
   Para X := 1 ate 10 faca
        Leia(A[X],B[X])
   FimPara
   //ENTRADA DE DADOS DO VETOR 'C'
   Para X := 1 ate 10 faca
        C[X] := (A[X] + B[X])^2
   Fimpara
   //SAÍDA DE DADOS DO VETOR 'C'
   EscrevaL("VETOR C:")
   Para X := 1 ate 10 faca
        Escreva(C[X])
   FimPara
fimalgoritmo
