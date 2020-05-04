algoritmo "EXERCICIO-J"
var
   A: Vetor[1..6,1..5] de inteiro
   B: Vetor[1..6,1..5] de inteiro
   X,Y: inteiro
inicio
      //ENTRADA DE DADOS: VETOR 'A' & 'B'
      Para X := 1 ate 6 faca
           Para Y := 1 ate 5 faca
                Leia(A[X,Y])
                Se A[X,Y]%2=1 entao
                   B[X,Y] := A[X,Y] - 4
                Senao
                   B[X,Y] := A[X,Y] + 5
                FimSe
           FimPara
      FimPara
      //SAÍDA DE DADOS: VETOR 'A' & 'B'
      EscrevaL("VETOR A")
      Para X := 1 ate 6 faca
           Para Y := 1 ate 5 faca
                Escreva(A[X,Y]:5)
           FimPara
           EscrevaL()
      FimPara
      EscrevaL()
      EscrevaL("VETOR B")
      Para X := 1 ate 6 faca
           Para Y := 1 ate 5 faca
                Escreva(B[X,Y]:5)
           FimPara
           EscrevaL()
      FimPara
fimalgoritmo