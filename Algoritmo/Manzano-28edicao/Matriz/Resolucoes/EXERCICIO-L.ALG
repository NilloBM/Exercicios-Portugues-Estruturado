algoritmo "EXERCICIO-L"
var
   A :Vetor[1..15,1..15] de inteiro
   X,Y,S: inteiro
inicio
      //ENTRADA DE DADOS: MATRIZ 'A'
      Para X := 1 ate 15 faca
           Para Y := 1 ate 15 faca
                Leia(A[X,Y])
                Se (X = Y) e (A[X,Y]%2 = 0) Entao
                   S := S + A[X,Y]
                FimSe
           FimPara
      FimPara
      //SA�DA DE DADOS: MATRIZ 'A'
      Escreva(" SOMAT�RIO DA DIAGONAL PRINCIPAL:",S)
fimalgoritmo