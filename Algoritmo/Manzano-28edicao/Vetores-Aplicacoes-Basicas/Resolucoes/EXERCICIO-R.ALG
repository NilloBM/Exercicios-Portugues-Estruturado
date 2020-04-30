algoritmo "EXERCICIO-R"
var
   A: Vetor[1..10] de caractere
   B: Vetor[1..5] de caractere
   C: Vetor[1..15] de caractere
   X,Y: inteiro
   AUX: caractere
inicio
   //ENTRADA DE DADOS: VETOR 'A', 'B'
   EscrevaL("VETOR A & B:")
   Para X := 1 ate 10 faca
      Leia(A[X])
   FimPara
   Para X := 1 ate 5 faca
      Leia(B[X])
   FimPara
   //ENTRADA DE DADOS: JUNÇÃO 'C'
   Para X := 1 ate 15 faca
      Se X > 10 entao
         C[X] := B[X-10]
      SeNao
         C[X] := A[X]
      FimSe
   FimPara
   //ORDENAÇÃO CRESCENTE: VETOR 'C'
   Para X := 1 ate 14 faca
        Para Y := X+1 ate 15 faca
             Se C[X] > C[Y] entao
                AUX := C[X]
                C[X] := C[Y]
                C[Y] := AUX
             FimSe
        FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'C'
   EscrevaL("VETOR C:")
   Para X := 1 ate 15 faca
        Escreva(C[X])
   FimPara
fimalgoritmo