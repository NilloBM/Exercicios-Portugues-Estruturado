algoritmo "EXERCICIO-R"
var
   A: vetor[1..6] de inteiro
   B: vetor[1..6] de inteiro
   C: vetor[1..12] de inteiro
   D: vetor[1..12] de inteiro
   X,I,P:inteiro
inicio
   //ENTRADA DE DADOS DOS VETORES 'A' E 'B'
   EscrevaL("MATRIZ A e B: ")
   Para X := 1 ate 6 faca
      Leia(A[X],B[X])
   FimPara
   //ENTRADA DE DADOS DOS VETORES 'C' E 'D'
   Para X := 1 ate 6 faca
      Se A[X]%2 = 1 entao
         I := I + 1
         C[I] := A[X]
      Senao
         P := P + 1
         D[P] := A[X]
      Fimse
      Se B[X]%2 = 1 entao
         I := I + 1
         C[I] := B[X]
      Senao
         P := P + 1
         D[P] := B[X]
      FimSe
   FimPara
   //SAÍDA DE DADOS DOS VETORES 'C' E 'D'
   EscrevaL("MATRIZ C: ")
   Para X := 1 ate I faca
        Escreva(C[X])
   FimPara
   EscrevaL()
   EscrevaL("MATRIZ D: ")
   Para X := 1 ate P faca
        Escreva(D[X])
   FimPara
fimalgoritmo