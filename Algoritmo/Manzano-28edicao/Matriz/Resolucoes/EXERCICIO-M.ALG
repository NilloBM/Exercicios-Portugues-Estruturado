algoritmo "EXERCICIO-M"
var
   A: Vetor[1..5,1..5] de real
   S: real
   X,Y: inteiro
inicio
   //ENTRADA DE DADOS: MATRIZ 'A'
   Para X := 1 ate 5 faca
      Para Y := 1 ate 5 faca
         Leia(A[X,Y])
         Se (X = Y) e (X%2 = 1) entao
            S := S + A[X,Y]
         FimSe
      FimPara
   FimPara
   //SA�DA DE DADOS: SOMA DAS POSI��ES �MPARES DA DIAGONAL PRINC. DA MATRIZ 'A'
   EscrevaL("SOMAT�RIO DA DIAGONAL NAS POSI��ES �MPARES:",S)
fimalgoritmo