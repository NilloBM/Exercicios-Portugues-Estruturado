algoritmo "EXERCICIO-Y"
var
   A: vetor[1..15] de inteiro
   X,TP: inteiro
inicio
      //ENTRADA DE DADOS DO VETOR 'A'
      EscrevaL("VETOR A:")
      Para X := 1 ate 15 faca
           Leia(A[X])
      FimPara
      //CONTAGEM DO TOTAL DE NÚMEROS PARES DO VETOR 'A'
      Para X := 1 ate 15 faca
           Se A[X]%2= 0 entao
              TP := TP + 1
           FimSe
      FimPara
      //SAÍDA DE DADOS: TOTAL DE NÚMEROS PARES DO VETOR 'A'
      Escreval("TOTAL DE NÚMEROS PARES: ",TP)
fimalgoritmo