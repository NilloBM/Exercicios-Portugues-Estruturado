algoritmo "EXERCICIO-T"
var
   A: Vetor[1..4,1..5] de inteiro
   B: Vetor[1..4,1..5] de inteiro
   C: Vetor[1..4,1..5] de inteiro
   X,Y,ENTRADA: inteiro
   FLAG1, FLAG2: logico
inicio
   //ENTRADA DE DADOS: VETOR 'A','B','C'
   Para X := 1 ate 4 faca
      Para Y := 1 ate 5 faca
         FLAG1 := falso
         FLAG2 := falso
         Repita
            Leia(ENTRADA)
            Se (ENTRADA%3=0) e (ENTRADA%4=0) e (FLAG1 = falso) entao
               A[X,Y] := ENTRADA
               FLAG1 := verdadeiro
            FimSe
            Se ((ENTRADA%5=0) ou (ENTRADA%6=0)) e (FLAG2 = falso) entao
               B[X,Y] := ENTRADA
               FLAG2 := verdadeiro
            FimSe
         Ate FLAG1 e FLAG2 = verdadeiro
         C[X,Y] := A[X,Y] - B[X,Y]
      Fimpara
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