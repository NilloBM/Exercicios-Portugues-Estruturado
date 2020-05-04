algoritmo "EXERCICIO-T"
var
   A: Vetor[1..4,1..5] de inteiro
   B: Vetor[1..4,1..5] de inteiro
   C: Vetor[1..4,1..5] de inteiro
   X,Y,ENTRADA: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A','B','C'
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         Repita
            Leia(ENTRADA)
         Ate (ENTRADA%3=0) e (ENTRADA%4=0)
         A[X,Y] := ENTRADA
         Repita
            Leia(ENTRADA)
         Ate (ENTRADA%5=0) ou (ENTRADA%6=0)
         B[X,Y] := ENTRADA
         C[X,Y] := A[X,Y] - B[X,Y]
      FimPara
   FimPara
   //SAÍDA DE DADOS: VETOR 'C'
   EscrevaL("VETOR C")
   Para X := 1 ate 4 faca
        Para Y := 1 ate 5 faca
             Escreva(C[X,Y]:5)
        FimPara
        EscrevaL()
   FimPara
fimalgoritmo