algoritmo "EXERCICIO-K"
var
   A: Vetor[1..5,1..5] de real
   X,Y: inteiro
   S: real
inicio
      //ENTRADA DE DADOS: VETOR 'A'
      Para X := 1 ate 5 faca
           Para Y := 1 ate 5 faca
                Leia(A[X,Y])
                Se Y = X entao
                   S := S + A[X,Y]
                FimSe
           FimPara
      FimPara
      //SA�DA DE DADOS: VETOR 'A'
      EscrevaL("SOMAT�RIO DA DIAGONAL PRINCIPAL:",S)
fimalgoritmo