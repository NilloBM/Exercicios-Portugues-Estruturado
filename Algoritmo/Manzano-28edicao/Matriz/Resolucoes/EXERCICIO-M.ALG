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
   //SAÍDA DE DADOS: SOMA DAS POSIÇÕES ÍMPARES DA DIAGONAL PRINC. DA MATRIZ 'A'
   EscrevaL("SOMATÓRIO DA DIAGONAL NAS POSIÇÕES ÍMPARES:",S)
fimalgoritmo