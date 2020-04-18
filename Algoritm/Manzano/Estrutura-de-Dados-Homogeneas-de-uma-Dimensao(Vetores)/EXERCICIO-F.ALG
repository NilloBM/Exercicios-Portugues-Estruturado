algoritmo "EXERCICIO-F"
var
   A: Vetor[1..15] de inteiro
   B: Vetor[1..15] de inteiro
   C: Vetor[1..30] de inteiro
   X,Z: inteiro
inicio
   //ENTRADA DE DADOS DAS MATRIZES 'A' E 'B'
   EscrevaL("MATRIZ A")
   Para X := 1 ate 15 faca
        Leia(A[X])
   FimPara
   EscrevaL("MATRIZ B")
   Para X := 1 ate 15 faca
        Leia(B[X])
   FimPara
   
   //ENTRADA DE DADOS DA MATRIZ 'C'
   Para X := 1 ate 15 faca
        C[X] := A[X]
   FimPara
   Para Z := 1 ate 15 faca
        C[Z+X] := B[Z]
   FimPara
   
   //SAÍDA DE DADOS DA MATRIZ'C'
   Escreva("Matriz C:")
   Para X := 1 ate 30 faca
        Escreva(C[X])
   FimPara
fimalgoritmo