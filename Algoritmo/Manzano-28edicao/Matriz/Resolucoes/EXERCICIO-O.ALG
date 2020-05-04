algoritmo "EXERCICIO-O"
var
   A: Vetor[1..8,1..6] de inteiro
   B: Vetor[1..8] de inteiro
   X,Y,SM_B: inteiro
inicio
      //ENTRADA DE DADOS: MATRIZ 'A' & VETOR 'B'
      Para X := 1 ate 8 faca
           Para Y := 1 ate 6 faca
                Leia(A[X,Y])
                B[X] := B[X] + A[X,Y]
           FimPara
           SM_B := SM_B + B[X]
      FimPara
      //SAÍDA DE DADOS: VETOR 'B'
      EscrevaL("VETOR B")
      EscrevaL("SOMATÓRIO DO VETOR 'B':",SM_B)
fimalgoritmo