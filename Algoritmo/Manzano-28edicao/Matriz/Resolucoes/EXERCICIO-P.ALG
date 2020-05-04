algoritmo "EXERCICIO-P"
var
   A: Vetor[1..10,1..7] de inteiro
   X,Y,Impar,Par: inteiro
   PercI,PercP: real
inicio
      //ENTRADA DE DADOS: MATRIZ 'A'
      Para X := 1 ate 10 faca
           Para Y := 1 ate 7 faca
                Leia(A[X,Y])
                Se A[X,Y]%2 = 1 entao
                   Impar := Impar + 1
                   PercI := Impar/70*100
                SeNao
                   Par := Par + 1
                   PercP := Par/70*100
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: MATRIZ 'A'
      EscrevaL("TOTAL DE ELEMENTOS ÍMPARES:",Impar)
      EscrevaL("TOTAL DE ELEMENTOS PARES:",Par)
      EscrevaL("PERCENTUAL DE ELEMENTOS ÍMPARES: ",PercI:3:2)
      EscrevaL("PERCENTUAL DE ELEMENTOS PARES: ",PercP:3:2)
fimalgoritmo