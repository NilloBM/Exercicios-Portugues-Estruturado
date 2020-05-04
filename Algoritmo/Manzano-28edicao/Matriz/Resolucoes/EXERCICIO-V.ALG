algoritmo "EXERCICIO-V"
var
   A: Vetor[1..5,1..5] de inteiro
   B: Vetor[1..5,1..5] de inteiro
   C: Vetor[1..5,1..5] de inteiro
   X,Y,ENTRADA: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A','B' & 'C'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 5 faca
         Repita
            Leia(ENTRADA)
            Se nao(ENTRADA%3=0) entao
               A[X,Y] := ENTRADA
            FimSe
         Ate ENTRADA = A[X,Y]
         Repita
            Leia(ENTRADA)
            Se nao(ENTRADA%6=0) entao
               B[X,Y] := ENTRADA
            FimSe
         Ate ENTRADA = B[X,Y]
         C[X,Y] := A[X,Y] + B[X,Y]
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'C'
   EscrevaL("VETOR C")
   Para X := 1 ate 5 faca
      Para Y := 1 ate 5 faca
         Escreva(C[X,Y]:5)
      FimPara
      EscrevaL()
   FimPara
fimalgoritmo