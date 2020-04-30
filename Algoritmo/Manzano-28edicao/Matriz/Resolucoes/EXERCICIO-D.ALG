algoritmo "EXERCICIO-D"
var
   A: Vetor[1..10] de inteiro
   C: Vetor[1..10,1..3] de inteiro
   X,Y,F: inteiro
inicio
   //ENTRADA DE DADOS: VETOR 'A'
   Para X := 1 ate 10 faca
      Leia(A[X])
   FimPara
   //ENTRADA DE DADOS: MATRIZ 'C'
   Para X := 1 ate 10 faca
      Para Y := 1 ate 3 faca
         // 1a COLUNA
         C[X,1] := A[X] + 5
         // 2a COLUNA
         C[X,2] := A[X]
         F := C[X,2] - 1
         Para F := F ate 1 passo -1 faca
            C[X,2] := C[X,2]*F
         FimPara
         // 3a COLUNA
         C[X,3] := Int(A[X]^2)
      FimPara
   FimPara
   //SAÍDA DE DADOS: MATRIZ 'C'
   Para X := 1 ate 10 faca
        Para Y := 1 ate 3 faca
             Escreva(C[X,Y]:10)
        FimPara
        EscrevaL()
   FimPara
fimalgoritmo








