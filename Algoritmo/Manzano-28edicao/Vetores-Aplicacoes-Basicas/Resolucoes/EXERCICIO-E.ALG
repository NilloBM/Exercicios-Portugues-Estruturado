algoritmo "EXERCICIO-E"
var
   A: vetor[1..20] de caractere
   B: vetor[1..30] de caractere
   C: vetor[1..50] de caractere
   X,Y: inteiro
   AUX: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A' E 'B'
   EscrevaL("VETOR A e B:")
   Para X := 1 ate 20 faca
      Leia(A[X])
   FimPara
   Para X := 1 ate 30 faca
      Leia(B[X])
   FimPara
   //ENTRADA DE DADOS: JUNÇÃO MATRIZ 'C'
   Para X := 1 ate 50 faca
      Se X > 20 Entao
         C[X] := B[X-20]
      Senao
         C[X] := A[X]
      FimSe
   FimPara
   //ORDENAÇÃO DECRESCENTE INSERT-SORT: MATRIZ 'C'
   Para X := 1 ate 49 faca
        Para Y := X + 1 ate 50 faca
             Se C[X] < C[Y] entao
                AUX := C[X]
                C[X] := C[Y]
                C[Y] := AUX
             FimSe
        FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'C'
   EscrevaL("VETOR C:")
   Para X:= 1 ate 50 faca
        Escreva(C[X])
   FimPara
   
fimalgoritmo