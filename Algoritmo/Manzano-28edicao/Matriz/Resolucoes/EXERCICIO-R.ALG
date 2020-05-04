algoritmo "EXERCICIO-R"
var
   A: Vetor[1..4] de inteiro
   B: Vetor[1..4] de inteiro
   C: Vetor[1..4] de inteiro
   D: Vetor[1..4] de inteiro
   Matriz_E: Vetor[1..4,1..4] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A','B','C','D'
   Para X := 1 ate 4 faca
      Leia(A[X],B[X],C[X],D[X])
   FimPara
   //ENTRADA DE DADOS: MATRIZ 'E'
   Para X := 1 ate 4 faca
      Para Y := 1 ate 4 faca
           Se X = 1 entao
              Matriz_E[X,Y] := A[Y]*2
           FimSe
           Se X = 2 entao
              Matriz_E[X,Y] := B[Y]*3
           FimSe
           Se X = 3 entao
              Matriz_E[X,Y] := C[Y]*4
           FimSe
           Se X = 4 entao
              Matriz_E[X,Y] := D[Y]
              F := D[Y] - 1
              Para F := F ate 1 passo -1 faca
              Matriz_E[X,Y] := Matriz_E[X,Y]*F
              FimPara
           FimSe
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'E'
   EscrevaL("MATRIZ E")
   Para X := 1 ate 4 faca
        Para Y := 1 ate 4 faca
             Escreva(Matriz_E[X,Y]:6)
        FimPara
        EscrevaL()
   FimPara
fimalgoritmo